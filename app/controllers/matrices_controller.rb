class MatricesController < ApplicationController

  ### Resources methods ########################################################

  def index
    parse_params

    s = params[:sort].nil? ? nil : %{"#{params[:sort]}"};
    @matrices = Matrix.order(s).paginate(:page => params[:page], :per_page => 10)
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
