# frozen_string_literal: true

module CollectionMatricesHelper
  # Determines how many matrices to display at a time via pagination
  # Reads from the params and session hashes, but also handles the special
  # case of displaying "All" matrices that match the given filters.
  def per_page(params, session)
    @per_page = params[:per_page] || session[:per_page] || 20
    @per_page = CollectionMatrix.count if @per_page == 'All'
    @per_page
  end

  # Creates a list of all matrix kinds currently in the database
  def kind_list
    # Find all unique kinds in the database
    @kinds = CollectionMatrix.order('kind asc').distinct.pluck(:kind)

    @kinds.map! do |x|
      # Titleize everything, and capitalize 2D and 3D
      x.titleize.gsub(/2\sD/, '2D').gsub(/3\sD/, '3D')
    end

    @kinds
  end

  # Creates a list of possible matrix types for new matrices
  def kind_submission_list
    @kinds = kind_list

    # Restrict submission types - remove sequences, duplicates, and subsequent
    # from submission types.
    @kinds.delete_if do |kind|
      (kind.include? 'Sequence') or
        (kind.include? 'Duplicate') or
        (kind.include? 'Subsequent')
    end

    # Add an option for an "Other" kind if the submission is really different
    @kinds.push('Other')
    @kinds
  end

  def is_checked(filterrific, filter_checkboxes)
    checked = {}
    params = filterrific.to_hash

    filter_checkboxes.each_key do |checkbox|
      properties = filter_checkboxes[checkbox]
      checked[checkbox] = false
      properties.each do |property|
        checked[checkbox] ||= params[property.to_s]
      end
    end

    checked
  end

  def image_list(matrix)
    return [] if matrix.nil? || matrix.image_files.nil?

    filename_list = matrix.image_files.split(',')
    image_list = []

    filename_list.each do |filename|
      image_hash = {}
      image_hash[:url] = "#{CollectionMatrix.get_base_url}files/#{matrix.group}/#{filename}"
      image_hash[:description] = get_image_description(filename, matrix)
      image_hash[:first] = (filename == filename_list.first)
      image_list.append(image_hash)
    end

    image_list
  end

  IMAGE_FILE_REGEXPS = {
    '.*%{name}_APlusAT_graph\..*': 'Graph Visualization of A+A\' for %<group>s/%<name>s',
    '.*%{name}_graph\..*': 'Force-Directed Graph Visualization of %<group>s/%<name>s',
    '.*%{name}.png': 'Nonzero Pattern of %<group>s/%<name>s',
    '.*%{name}_svd\..*': 'Singular Values of %<group>s/%<name>s',
    '.*%{name}_gplot\..*': '3D Graph Plot of %<group>s/%<name>s',
    '.*%{name}_dmperm\..*': 'Dulmage-Mendelsohn Permutation of %<group>s/%<name>s',
    '.*%{name}_scc\..*': 'Connected Components of the Bipartite Graph of %<group>s/%<name>s'
  }.freeze

  def get_image_description(filename, matrix)
    description = nil

    IMAGE_FILE_REGEXPS.each_key do |regexp|
      filename_regexp = Regexp.new(format(regexp.to_s, name: matrix.name))
      if filename_regexp.match?(filename)
        description = format(IMAGE_FILE_REGEXPS[regexp], group: matrix.group, name: matrix.name)
      end
    end

    description ||= filename

    description
  end

  TOOLTIPS = {
    num_rows:
      'Number of rows in the sparse matrix (often referred to as m)',
    num_cols:
      'Number of columns in the sparse matrix (often referred to as n)',
    nonzeros:
      'Number of numerically nonzero elements in the sparse matrix',
    entries:
      'Number of nonzero (and explicit zero) entries in the sparse matrix',
    kind:
      'The general problem category, domain, or field this matrix arises from',
    symmetric:
      'Whether the matrix is structurally and numerically symmetric',
    date:
      'The year this matrix was added to the Collection',
    author:
      'Person(s) responsible for creating or discovering this matrix',
    editor:
      'Person(s) responsible for gathering and formatting the metadata associated with this matrix',
    num_dmperm_blocks:
      'Number of blocks obtained from the Dulmage-Mendelsohn decomposition',
    num_strongly_connected_components:
      'Number of (strongly) connected components in the resulting graph of this matrix',
    num_explicit_zeros:
      'Number of matrix entries that have a value of zero',
    pattern_symmetry:
      'The percentage of nonzero entries that have a matching nonzero entry across the diagonal (but the value may be different)',
    numeric_symmetry:
      'The percentage of nonzero entries that are numerically symmetric',
    cholesky_candidate:
      'Whether the matrix can be decomposed using a Cholesky factorization',
    positive_definite:
      'Whether the matrix is positive definite (all eigenvalues are positive)',
    rb_type:
      'Rutherford-Boeing type: real, complex, integer, or binary'
  }.freeze

  # Define tooltip text for a variety of fields/properties
  def tooltip_text(property)
    tooltip = TOOLTIPS[property]
    raise ArgumentError, 'Unknown matrix property' if tooltip.nil?

    tooltip
  end
end
