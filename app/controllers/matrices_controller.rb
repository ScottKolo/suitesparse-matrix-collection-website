class MatricesController < ApplicationController

  helper_method :getStyle

  def index
	
	if params[:sort]!=nil
	  session[:sort]=params[:sort]
	end

    if (params[:sort]==nil and session[:sort]!=nil)
      redirectThis
    end

	@matrices = Matrix.order(params[:sort]).paginate(:page => params[:page], :per_page => 10)
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
  
  def getStyle(var)
    if(params[:sort]==var)
      return 'hilite'
    end
  end
  def redirectThis
    if flash[:notice]!=nil
      flash.keep
    end
    redirect_to matrices_path(:action => "show", :sort => session[:sort])
  end

end
