class MatricesController < ApplicationController

  ### Resources methods ########################################################

  def index
    @filterrific = initialize_filterrific(
      Matrix,
      params[:filterrific],
      select_options: {
        sorted_by: Matrix.options_for_sorted_by,
        positive_definite_options: ['Yes', 'No'],
      }
    ) or return
    
    @matrices = @filterrific.find.page(params[:page])

    @per_page = helpers.per_page(params, session)
    
    @matrices = @matrices.paginate(page: params[:page], per_page: @per_page)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    # Get matrix info from the params
    id, group, name = params.values_at(:id, :group, :name)

    # Show the details page for a matrix
    @matrix = Matrix.find_by(id: id) || Matrix.find_by(name: name, group: group)
    if !@matrix
      render :not_found
    end
  end

  def new
    # Get a list of kinds currently in the collection
    @kinds = helpers.kind_list

    # Add an option for an "Other" kind if the submission is really different
    @kinds.push("Other")
  end

end
