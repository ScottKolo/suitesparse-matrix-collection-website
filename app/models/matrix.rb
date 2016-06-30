class Matrix < ActiveRecord::Base

  ### Download Helpers #########################################################

  # Get the base URL for remote matrix downloads
  def self.get_base_url
    return '//www.cise.ufl.edu/research/sparse/'
  end

  # Get the download URL for a given matrix and file format
  def get_url(file_format)
    base_url = Matrix.get_base_url
    if file_format == :matlab
      return "#{base_url}mat/#{self.group}/#{self.name}.mat"
    elsif file_format == :rutherford_boeing
      return "#{base_url}RB/#{self.group}/#{self.name}.tar.gz"
    elsif file_format == :matrix_market
      return "#{base_url}MM/#{self.group}/#{self.name}.tar.gz"
    else
      raise ArgumentError.new("Unknown matrix file type - only :matlab, :rutherford_boeing, and :matrix_market allowed")
    end
  end

  ### Filtering and Sorting Helpers ############################################

  filterrific(
    default_filter_params: { sorted_by: 'id_asc' },
    available_filters: [
      :sorted_by,
      :search_query,
      :min_rows,
      :max_rows,
      :min_cols,
      :max_cols,
      :min_nonzeros,
      :max_nonzeros,
      :min_pattern_symmetry,
      :max_pattern_symmetry,
      :min_numerical_symmetry,
      :max_numerical_symmetry
    ]
  )

  scope :sorted_by, ->(sort_option) {
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
    when /^id_/
      # Sort by matrix ID
      order("matrices.id #{ direction }")
    when /^group_/
      # Sort alphabetically by group name
      order("LOWER(matrices.group) #{ direction }")
    when /^name_/
      # Sort alphabetically by matrix name
      order("LOWER(matrices.name) #{ direction }")
    when /^rows_/
      # Sort by number of rows
      order("matrices.num_rows #{ direction }")
    when /^cols_/
      # Sort by number of columns
      order("matrices.num_cols #{ direction }")
    when /^nonzeros_/
      # Sort by number of nonzeros
      order("matrices.nonzeros #{ direction }")
    when /^kind_/
      # Sort alphabetically by kind
      order("matrices.kind #{ direction }")
    when /^date_/
      # Sort by matrix date field
      order("matrices.date #{ direction }")
    else
      raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }

  # This method provides select options for the `sorted_by` filter select input.
  # It is called in the controller as part of `initialize_filterrific`.
  def self.options_for_sorted_by
    [
      ['ID (High to Low)', 'id_desc'],
      ['ID (Low to High)', 'id_asc'],
      ['Group (A to Z)', 'group_desc'],
      ['Group (Z to A)', 'group_asc'],
      ['Name (A to Z)', 'name_asc'],
      ['Name (Z to A)', 'name_desc'],
      ['Rows (High to Low)', 'rows_desc'],
      ['Rows (Low to High)', 'rows_asc'],
      ['Columns (High to Low)', 'cols_desc'],
      ['Columns (Low to High)', 'cols_asc'],
      ['Nonzeros (High to Low)', 'nonzeros_desc'],
      ['Nonzeros (Low to High)', 'nonzeros_asc'],
      ['Kind (A to Z)', 'kind_asc'],
      ['Kind (Z to A)', 'kind_desc'],
      ['Date (Oldest First)', 'date_asc'],
      ['Date (Recent First)', 'date_desc']
    ]
  end

  scope :search_query, -> (query) { 
    return nil if query.blank?

    # condition query, parse into individual keywords
    terms = query.to_s.downcase.split(/\s+/)

    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      (e.tr('*', '%') + '%').gsub(/%+/, '%')
    }
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conds = 1
    where(
      terms.map {
        "LOWER(matrices.name) LIKE ?"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conds }.flatten
    )
  }

  scope :min_rows, -> (min_rows) {
    where("matrices.num_rows >= ?", min_rows)
  }

  scope :max_rows, -> (max_rows) {
    where("matrices.num_rows <= ?", max_rows)
  }

  scope :min_cols, -> (min_cols) {
    where("matrices.num_cols >= ?", min_cols)
  }

  scope :max_cols, -> (max_cols) {
    where("matrices.num_cols <= ?", max_cols)
  }

  scope :min_nonzeros, -> (min_nonzeros) {
    where("matrices.nonzeros >= ?", min_nonzeros)
  }

  scope :max_nonzeros, -> (max_nonzeros) {
    where("matrices.nonzeros <= ?", max_nonzeros)
  }

  scope :min_pattern_symmetry, -> (min_pattern_symmetry) {
    where("matrices.pattern_symmetry >= ?", min_pattern_symmetry/100)
  }

  scope :max_pattern_symmetry, -> (max_pattern_symmetry) {
    where("matrices.pattern_symmetry <= ?", max_pattern_symmetry/100)
  }

  scope :min_numerical_symmetry, -> (min_numerical_symmetry) {
    where("matrices.numeric_symmetry >= ?", min_numerical_symmetry/100)
  }

  scope :max_numerical_symmetry, -> (max_numerical_symmetry) {
    where("matrices.numeric_symmetry <= ?", max_numerical_symmetry/100)
  }

  ##############################################################################

end
