class GroupsController < ApplicationController

  def index
    @per_page = helpers.per_page(params, session)
    @groups = Group.paginate(page: params[:page], per_page: @per_page)
  end

  def show
    # Get group info from the params
    group_name = params[:group]
    @group = Group.find_by(name: group_name)
    
    if !@group
      render :not_found
    end

    @per_page = helpers.per_page(params, session)
    @matrices = Matrix.where(group: group_name)
    @matrices = @matrices.paginate(page: params[:page], per_page: @per_page)
  end

end
