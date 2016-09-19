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
    @kinds = Matrix.order('kind asc').uniq.pluck(:kind)
    @kinds.map! do |x| 
      x.titleize.gsub(/2\sD/, '2D').gsub(/3\sD/, '3D')
    end
    return @kinds
  end
end
