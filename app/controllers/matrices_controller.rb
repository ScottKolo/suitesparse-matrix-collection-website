class MatricesController < ApplicationController

  ### Resources methods ########################################################

  def index
    parse_params
    #@admin = false
    if session[:admin_id] and @admin = Admin.find(session[:admin_id])
      @pending_matrices = Matrix.where(pending: true)
      #@admin = Admin.find()
    end
    @matrices = Matrix.where(pending: false)

    apply_filters
    apply_sort
    apply_pagination
  end

  def show
    # Show the details page for a matrix
    id = params[:id]
    begin
      @matrix = Matrix.find(id) # Happy path
    rescue
      render :not_found         # Sad path
    end
  end

  def create
    # Push a new matrix to the pending database.
  end

  def new
  end

  def destroy
  end

  def update
  end

  ### Params Helpers ###########################################################

  # Parse the params array into session data
  def parse_params
    newSort   = !params[:sort].nil?
    newFilter = !params[:filter].nil?

    if newSort   then session[:sort]   = params[:sort]   end
    if newFilter then session[:filter] = params[:filter] end

    if newSort or newFilter
      if !flash[:notice].nil? then flash.keep end
      redirect_to matrices_path
    end
  end

  ### Index Helpers ############################################################

  def apply_filters
    filters = session[:filter]
    if !filters.nil?
      filters.each do |attribute, value|
        if value.class == Hash then
          if value["min"] != "" then
            @matrices = @matrices.where(%{"#{attribute}" >= ?}, value["min"])
          end
          if value["max"] != "" then
            @matrices = @matrices.where(%{"#{attribute}" <= ?}, value["max"])
          end
        elsif value != "" then
          if value == "on" then
            value = "true"
          end
          @matrices = @matrices.where(%{"#{attribute}" = ?}, value)
        end
      end
    end
  end

  def apply_sort
    s = session[:sort].nil? ? nil : %{"#{session[:sort]}"};
    @matrices = @matrices.order(s)
  end

  def apply_pagination
    @per_page = params[:per_page] || Matrix.per_page || 20
    if @per_page == "All"
      @per_page = Matrix.count
    end
    @matrices = @matrices.paginate(:page => params[:page], :per_page => @per_page)
    if @pending_matrices
      @pending_matrices = @pending_matrices.paginate(:page => params[:pend_page], :per_page => @per_page)
    end
  end

  ##############################################################################

end
