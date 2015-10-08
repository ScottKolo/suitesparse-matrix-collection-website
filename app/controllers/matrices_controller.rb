class MatricesController < ApplicationController
  def index
    @matrices = Matrix.all
  end

  def show
    id = params[:id]
    @matrix = Matrix.find(id)
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
