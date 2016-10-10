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
    @kinds = Matrix.order('kind asc').distinct.pluck(:kind)
    @kinds.map! do |x| 
      x.titleize.gsub(/2\sD/, '2D').gsub(/3\sD/, '3D')
    end
    return @kinds
  end

  # Creates a list of possible matrix types for new matrices
  def kind_submission_list
    @kinds = kind_list

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

  def has_scc_plot(matrix)
    matrix.num_strongly_connected_components and 
    matrix.num_strongly_connected_components > 1 and
    matrix.num_rows and
    matrix.num_cols and
    !matrix.structural_full_rank.nil? and
    not (has_dmperm_plot(matrix) and matrix.num_rows == matrix.num_cols and matrix.structural_full_rank)
  end

  def has_dmperm_plot(matrix)
    matrix.num_dmperm_blocks and matrix.num_dmperm_blocks > 1 and not matrix.kind.include? 'graph'
  end

  def has_gplot(matrix)
    matrix.aux_fields and matrix.aux_fields.include? 'coord:'
  end
end
