class GroupsController < ApplicationController

  PERMITTED_PARAMTERS = [:page, :per_page, :utf8, :_]

  def index
    # List of permitted fields for params
    permitted_params = params.permit(PERMITTED_PARAMTERS)

    @per_page = helpers.per_page(permitted_params, session)
    @groups = Group.paginate(page: permitted_params[:page], per_page: @per_page)

    # Allow the index page to respond to HTML and javascript (ajax)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    # List of permitted fields for params
    permitted_params = params.permit([{filterrific: [:reset_filterrific, :sorted_by]},
      :format, :group, :page, :per_page, :utf8, :_])

    # Initialize filterrific filtering system
    @filterrific = initialize_filterrific(
      CollectionMatrix,
      permitted_params[:filterrific],
      select_options: {
        sorted_by: CollectionMatrix.options_for_sorted_by,
      }
    ) or return

    # Get group info from the params
    group_name = permitted_params[:group]
    @group = Group.find_by(name: group_name)
    
    if !@group
      return render :not_found, status: 404, content_type: 'text/html', template: 'groups/not_found'
    end

    @matrices = @filterrific.find.page(permitted_params[:page]).merge(CollectionMatrix.where(group: group_name))
    @per_page = helpers.per_page(params, session)
    # @matrices = Matrix.where(group: group_name)
    @matrices = @matrices.paginate(page: params[:page], per_page: @per_page)

    # Allow the index page to respond to HTML and javascript (ajax)
    # respond_to do |format|
    #   format.html
    #   format.js
    #   format.all { return render :not_found, status: 404, content_type: 'text/html'  }
    # end
  end

end
