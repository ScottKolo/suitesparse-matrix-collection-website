# frozen_string_literal: true

class CollectionMatrix < ApplicationRecord
  ### Download Helpers #########################################################

  # Get the base URL for remote matrix downloads
  def self.get_base_url
    # return 'https://sparse.tamu.edu/'
    'https://suitesparse-collection-website.herokuapp.com/'
  end

  # Get the download URL for a given matrix and file format
  def get_url(file_format)
    base_url = CollectionMatrix.get_base_url
    case file_format
    when :matlab
      "#{base_url}mat/#{group}/#{name}.mat"
    when :rutherford_boeing
      "#{base_url}RB/#{group}/#{name}.tar.gz"
    when :matrix_market
      "#{base_url}MM/#{group}/#{name}.tar.gz"
    when :svd
      "#{base_url}svd/#{group}/#{name}_SVD.mat"
    else
      raise ArgumentError, 'Unknown matrix file type - only :matlab, :rutherford_boeing, and :matrix_market allowed'
    end
  end

  ### Filtering and Sorting Helpers ############################################

  filterrific(
    default_filter_params: { sorted_by: 'id_asc' },
    available_filters: %i[
      sorted_by
      search_query
      min_id
      max_id
      min_year
      max_year
      min_rows
      max_rows
      min_cols
      max_cols
      min_nonzeros
      max_nonzeros
      min_pattern_symmetry
      max_pattern_symmetry
      min_numerical_symmetry
      max_numerical_symmetry
      min_strongly_connected_components
      max_strongly_connected_components
      min_dmperm_blocks
      max_dmperm_blocks
      rb_type
      structure
      name_query
      group_query
      positive_definite
    ]
  )

  scope :sorted_by, lambda { |sort_option|
    # extract the sort direction from the param value.
    direction = sort_option =~ /desc$/ ? 'desc' : 'asc'
    case sort_option.to_s
    when /^id_/
      # Sort by matrix ID
      order("collection_matrices.matrix_id #{direction}")
    when /^group_/
      # Sort alphabetically by group name
      order(Arel.sql("LOWER(collection_matrices.group) #{direction}"))
    when /^name_/
      # Sort alphabetically by matrix name
      order(Arel.sql("LOWER(collection_matrices.name) #{direction}"))
    when /^rows_/
      # Sort by number of rows
      order("collection_matrices.num_rows #{direction}")
    when /^cols_/
      # Sort by number of columns
      order("collection_matrices.num_cols #{direction}")
    when /^nonzeros_/
      # Sort by number of nonzeros
      order("collection_matrices.nonzeros #{direction}")
    when /^kind_/
      # Sort alphabetically by kind
      order("collection_matrices.kind #{direction}")
    when /^date_/
      # Sort by matrix date field
      order("collection_matrices.date #{direction}")
    else
      raise(ArgumentError, "Invalid sort option: #{sort_option.inspect}")
    end
  }

  # This method provides select options for the `sorted_by` filter select input.
  # It is called in the controller as part of `initialize_filterrific`.
  def self.options_for_sorted_by
    [
      ['ID (High to Low)',       'id_desc'],
      ['ID (Low to High)',       'id_asc'],
      ['Group (A to Z)',         'group_asc'],
      ['Group (Z to A)',         'group_desc'],
      ['Name (A to Z)',          'name_asc'],
      ['Name (Z to A)',          'name_desc'],
      ['Rows (High to Low)',     'rows_desc'],
      ['Rows (Low to High)',     'rows_asc'],
      ['Columns (High to Low)',  'cols_desc'],
      ['Columns (Low to High)',  'cols_asc'],
      ['Nonzeros (High to Low)', 'nonzeros_desc'],
      ['Nonzeros (Low to High)', 'nonzeros_asc'],
      ['Kind (A to Z)',          'kind_asc'],
      ['Kind (Z to A)',          'kind_desc'],
      ['Date (Oldest First)',    'date_asc'],
      ['Date (Recent First)',    'date_desc']
    ]
  end

  scope :search_query, lambda { |query|
    return nil if query.blank?

    # condition query, parse into individual keywords
    terms = query.to_s.downcase.split(/\s+/)

    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map do |e|
      "%#{e.tr('*', '%')}%".gsub(/%+/, '%')
    end
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conds = 7
    where(
      terms.map do
        "LOWER(collection_matrices.name) LIKE ?
          OR LOWER(collection_matrices.description) LIKE ?
          OR LOWER(collection_matrices.kind) LIKE ?
          OR LOWER(collection_matrices.notes) LIKE ?
          OR LOWER(collection_matrices.group) LIKE ?
          OR LOWER(collection_matrices.author) LIKE ?
          OR LOWER(collection_matrices.editor) LIKE ?"
      end.join(' AND '),
      *terms.map { |e| [e] * num_or_conds }.flatten
    )
  }

  def self.process_text_query(text_query)
    processed_query = "%#{text_query.tr('*', '%')}%".gsub(/%+/, '%')
    processed_query.downcase
  end

  scope :name_query, lambda { |query|
    return nil if query.blank?

    processed_query = CollectionMatrix.process_text_query(query)
    where('LOWER(collection_matrices.name) LIKE ?', processed_query)
  }

  scope :group_query, lambda { |query|
    return nil if query.blank?

    processed_query = CollectionMatrix.process_text_query(query)
    where('LOWER(collection_matrices.group) LIKE ?', processed_query)
  }

  # Filter by group name
  scope :group_name, lambda { |group|
    where('collection_matrices.group = ?', group)
  }

  # Filter by number of rows
  scope :min_rows, lambda { |min_rows|
    where('collection_matrices.num_rows >= ?', min_rows)
  }

  scope :max_rows, lambda { |max_rows|
    where('collection_matrices.num_rows <= ?', max_rows)
  }

  # Filter by number of columns
  scope :min_cols, lambda { |min_cols|
    where('collection_matrices.num_cols >= ?', min_cols)
  }

  scope :max_cols, lambda { |max_cols|
    where('collection_matrices.num_cols <= ?', max_cols)
  }

  # Filter by number of nonzeros
  scope :min_nonzeros, lambda { |min_nonzeros|
    where('collection_matrices.nonzeros >= ?', min_nonzeros)
  }

  scope :max_nonzeros, lambda { |max_nonzeros|
    where('collection_matrices.nonzeros <= ?', max_nonzeros)
  }

  scope :structure, lambda { |structure|
    case structure
    when 'Square'
      where('collection_matrices.num_rows = collection_matrices.num_cols')
    when 'Rectangular'
      where.not('collection_matrices.num_rows = collection_matrices.num_cols')
    when 'Hermitian'
      where('collection_matrices.structure = ?', structure)
    else
      where('collection_matrices.structure = ?', structure.downcase)
    end
  }

  scope :rb_type, lambda { |rb_type|
    where('collection_matrices.rb_type = ?', rb_type.downcase)
  }

  # Filter by ID
  scope :min_id, lambda { |min_id|
    where('collection_matrices.matrix_id >= ?', min_id)
  }

  scope :max_id, lambda { |max_id|
    where('collection_matrices.matrix_id <= ?', max_id)
  }

  # Filter by year
  scope :min_year, lambda { |min_year|
    where('collection_matrices.date >= ?', min_year)
  }

  scope :max_year, lambda { |max_year|
    where('collection_matrices.date <= ?', max_year)
  }

  # Filter by pattern symmetry
  scope :min_pattern_symmetry, lambda { |min_pattern_symmetry|
    where('collection_matrices.pattern_symmetry >= ?', min_pattern_symmetry.to_f / 100)
  }

  scope :max_pattern_symmetry, lambda { |max_pattern_symmetry|
    where('collection_matrices.pattern_symmetry <= ?', max_pattern_symmetry.to_f / 100)
  }

  # Filter by numerical symmetry
  scope :min_numerical_symmetry, lambda { |min_numerical_symmetry|
    where('collection_matrices.numeric_symmetry >= ?', min_numerical_symmetry.to_f / 100)
  }

  scope :max_numerical_symmetry, lambda { |max_numerical_symmetry|
    where('collection_matrices.numeric_symmetry <= ?', max_numerical_symmetry.to_f / 100)
  }

  # Filter by number of strongly connected components
  scope :min_strongly_connected_components, lambda { |min_strongly_connected_components|
    where('collection_matrices.num_strongly_connected_components >= ?', min_strongly_connected_components)
  }

  scope :max_strongly_connected_components, lambda { |max_strongly_connected_components|
    where('collection_matrices.num_strongly_connected_components <= ?', max_strongly_connected_components)
  }

  # Filter by positive definiteness
  scope :positive_definite, lambda { |pos_def|
    if pos_def == 'Any'
      nil
    else
      where('collection_matrices.positive_definite = ?', pos_def.downcase)
    end
  }

  ##############################################################################
end
