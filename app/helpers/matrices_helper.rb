module MatricesHelper
  # Determines how many matrices to display at a time via pagination
  # Reads from the params and session hashes, but also handles the special
  # case of displaying "All" matrices that match the given filters.
  def per_page(params, session)
    @per_page = params[:per_page].to_i || session[:per_page].to_i || 20
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

  # Checks if an image exists on a server
  def is_valid_image_url(url)
    # Check if this image exists by sending a HTTP GET request
    response = Net::HTTP.get_response(URI.parse(url))

    # If the response is normal-ish, we say it exists.
    return (response.code.to_i >= 200 && response.code.to_i < 400)
  end

  def has_graph_plot(matrix)
    return is_valid_image_url("#{Matrix.get_base_url}files/#{matrix.group}/#{matrix.name}_graph.gif")
  end

  def has_AplusAT_plot(matrix)
    return is_valid_image_url("#{Matrix.get_base_url}files/#{matrix.group}/#{matrix.name}_APlusAT_graph.gif")
  end

  def has_pattern_plot(matrix)
    return is_valid_image_url("#{Matrix.get_base_url}files/#{matrix.group}/#{matrix.name}.png")
  end

  def has_svd_plot(matrix)
    return is_valid_image_url("#{Matrix.get_base_url}files/#{matrix.group}/#{matrix.name}_svd.png")
  end

  def has_gplot(matrix)
    return is_valid_image_url("#{Matrix.get_base_url}files/#{matrix.group}/#{matrix.name}_gplot.png")
  end

  def has_dmperm_plot(matrix)
    return is_valid_image_url("#{Matrix.get_base_url}files/#{matrix.group}/#{matrix.name}_dmperm.png")
  end

  def has_scc_plot(matrix)
    return is_valid_image_url("#{Matrix.get_base_url}files/#{matrix.group}/#{matrix.name}_scc.png")
  end

  # Define tooltip text for a variety of fields/properties
  def tooltip_text(property)
    if property == :num_rows
      return "Number of rows in the sparse matrix (often referred to as m)"
    elsif property == :num_cols
      return "Number of columns in the sparse matrix (often referred to as n)"
    elsif property == :nonzeros
      return "Number of nonzero (and explicit zero) elements in the sparse matrix"
    elsif property == :kind
      return "The general problem category, domain, or field this matrix arises from"
    elsif property == :symmetric
      return "Whether the matrix is structurally and numerically symmetric"
    elsif property == :date
      return "The year this matrix was added to the Collection"
    elsif property == :author
      return "Person(s) responsible for creating or discovering this matrix"
    elsif property == :editor
      return "Person(s) responsible for gathering and formatting the metadata associated with this matrix"
    elsif property == :num_dmperm_blocks
      return "Number of blocks obtained from the Dulmage-Mendelsohn decomposition"
    elsif property == :num_strongly_connected_components
      return "Number of (strongly) connected components in the resulting graph of this matrix"
    elsif property == :num_explicit_zeros
      return "Number of nonzero elements that have a value of zero"
    elsif property == :pattern_symmetry
      return "The percentage of nonzero entries that have a matching nonzero entry across the diagonal (but the value may be different)"
    elsif property == :numeric_symmetry
      return "The percentage of nonzero entries that are numerically symmetric"
    elsif property == :cholesky_candidate
      return "Whether the matrix can be decomposed using a Cholesky factorization"
    elsif property == :positive_definite
      return "Whether the matrix is positive definite (all eigenvalues are positive)"
    elsif property == :rb_type
      return "Rutherford-Boeing type: real, complex, integer, or binary"
    else
      raise ArgumentError.new("Unknown matrix property")
    end
  end
end
