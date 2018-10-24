module MatricesHelper
  # Determines how many matrices to display at a time via pagination
  # Reads from the params and session hashes, but also handles the special
  # case of displaying "All" matrices that match the given filters.
  def per_page(params, session)
    @per_page = params[:per_page] || session[:per_page] || 20
    if @per_page == "All"
      @per_page = Matrix.count
    end
    return @per_page
  end

  # Creates a list of all matrix kinds currently in the database
  def kind_list
    # Find all unique kinds in the database
    @kinds = Matrix.order('kind asc').distinct.pluck(:kind)
    @kinds.map! do |x| 
      # Titleize everything, and capitalize 2D and 3D
      x.titleize.gsub(/2\sD/, '2D').gsub(/3\sD/, '3D')
    end
    return @kinds
  end

  # Creates a list of possible matrix types for new matrices
  def kind_submission_list
    @kinds = kind_list

    # Restrict submission types - remove sequences, duplicates, and subsequent
    # from submission types.
    @kinds.delete_if { |kind| 
      (kind.include? "Sequence") or 
      (kind.include? "Duplicate") or 
      (kind.include? "Subsequent")
    }

    # Add an option for an "Other" kind if the submission is really different
    @kinds.push("Other")
  end

  def is_checked(properties, filterrific)
    is_checked = false
    params = filterrific.to_hash
    properties.each do |property|
      is_checked ||= params[property.to_s]
    end
    is_checked
  end

  def image_list(matrix)
    if matrix.nil? or matrix.image_files.nil?
      return [];
    end

    filename_list = matrix.image_files.split(',')
    image_list = [];

    for filename in filename_list
      image_hash = {};
      image_hash[:url] = "#{Matrix.get_base_url}files/#{matrix.group}/#{filename}"
      image_hash[:description] = get_image_description(filename, matrix)
      image_hash[:first] = (filename == filename_list.first)
      image_list.append(image_hash)
    end

    return image_list
  end

  def get_image_description(filename, matrix)
    case filename
    when /.*_APlusAT_graph\..*/
      description = "Graph Visualization of A+A' for #{matrix.group}/#{matrix.name}"
    when /.*_graph\..*/
      description = "Force-Directed Graph Visualization of #{matrix.group}/#{matrix.name}"
    when /.*#{matrix.name}.png/
      description = "Nonzero Pattern of #{matrix.group}/#{matrix.name}"
    when /.*_svd\..*/
      description = "Singular Values of #{matrix.group}/#{matrix.name}"
    when /.*_gplot\..*/
      description = "3D Graph Plot of #{matrix.group}/#{matrix.name}"
    when /.*_dmperm\..*/
      description = "Dulmage-Mendelsohn Permutation of #{matrix.group}/#{matrix.name}"
    when /.*_scc\..*/
      description = "Connected Components of the Bipartite Graph of #{matrix.group}/#{matrix.name}"
    else
      description = filename
    end
    return description
  end

  # Define tooltip text for a variety of fields/properties
  def tooltip_text(property)
    case property
      when :num_rows
        tooltip = "Number of rows in the sparse matrix (often referred to as m)"
      when :num_cols
        tooltip = "Number of columns in the sparse matrix (often referred to as n)"
      when :nonzeros
        tooltip = "Number of numerically nonzero elements in the sparse matrix"
      when :entries
        tooltip = "Number of nonzero (and explicit zero) entries in the sparse matrix"
      when :kind
        tooltip = "The general problem category, domain, or field this matrix arises from"
      when :symmetric
        tooltip = "Whether the matrix is structurally and numerically symmetric"
      when :date
        tooltip = "The year this matrix was added to the Collection"
      when :author
        tooltip = "Person(s) responsible for creating or discovering this matrix"
      when :editor
        tooltip = "Person(s) responsible for gathering and formatting the metadata associated with this matrix"
      when :num_dmperm_blocks
        tooltip = "Number of blocks obtained from the Dulmage-Mendelsohn decomposition"
      when :num_strongly_connected_components
        tooltip = "Number of (strongly) connected components in the resulting graph of this matrix"
      when :num_explicit_zeros
        tooltip = "Number of matrix entries that have a value of zero"
      when :pattern_symmetry
        tooltip = "The percentage of nonzero entries that have a matching nonzero entry across the diagonal (but the value may be different)"
      when :numeric_symmetry
        tooltip = "The percentage of nonzero entries that are numerically symmetric"
      when :cholesky_candidate
        tooltip = "Whether the matrix can be decomposed using a Cholesky factorization"
      when :positive_definite
        tooltip = "Whether the matrix is positive definite (all eigenvalues are positive)"
      when :rb_type
        tooltip = "Rutherford-Boeing type: real, complex, integer, or binary"
      else
        raise ArgumentError.new("Unknown matrix property")
    end
    return tooltip
  end
end
