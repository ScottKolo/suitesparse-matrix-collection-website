class MatricesController < ApplicationController

  ### Resources methods ########################################################

  def index
    parse_params

    # Apply Filter

    # Apply Sort
    s = params[:sort].nil? ? nil : %{"#{params[:sort]}"};
    @per_page = params[:per_page] || Matrix.per_page || 20
    if @per_page == "All"
      @per_page = Matrix.count
    end
    @matrices = Matrix.order(s).paginate(:page => params[:page], :per_page => @per_page)
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
    if params[:sort] != nil
      session[:sort] = params[:sort]
    end

#    filter_attributes = []
#    params.each do |key, value|
#      if key.match(/^filter-.*/)
#        filter_attributes.push(key.match(/(?<=filter-)/).to_s.downcase
#      end
#    end
#    filter_attributes.each
#    end

    if params[:sort] == nil and session[:sort] != nil
      reload_params
    end
  end

  # Reload params from session
  def reload_params
    if flash[:notice] != nil
      flash.keep
    end
    redirect_to matrices_path(:sort => session[:sort])
  end

  ##############################################################################

end
