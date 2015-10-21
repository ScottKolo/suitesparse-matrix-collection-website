class MatricesController < ApplicationController

  def index
    @matrices = Matrix.paginate(:page => params[:page], :per_page => 10)
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

end
