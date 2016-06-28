class MatricesController < ApplicationController

  ### Resources methods ########################################################

  def index
    @filterrific = initialize_filterrific(
      Matrix,
      params[:filterrific],
      select_options: {
        sorted_by: Matrix.options_for_sorted_by,
      }
    ) or return
    
    @matrices = @filterrific.find.page(params[:page])
    
    @per_page = params[:per_page] || session[:per_page] || 20
    if @per_page == "All"
      @per_page = Matrix.count
    end
    @matrices = @matrices.paginate(:page => params[:page], :per_page => @per_page)

    respond_to do |format|
      format.html
      format.js
    end

  rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Had to reset filterrific params: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  def show
    if session[:admin_id]
      @admin = Admin.find(session[:admin_id])
    end

    # Get matrix info from the params
    id, group, name = params.values_at(:id, :group, :name)

    # Show the details page for a matrix
    @matrix = Matrix.find_by(id: id) || Matrix.find_by(name: name, group: group)
    if !@matrix
      render :not_found
    end
  end

  def create
    #Check the captcha
    if simple_captcha_valid?
      @matrix = Matrix.new(matrix_params)
      #Check whether the matrix has all of the necessary fields
      if @matrix.valid?

        #Process matrix here
        #set num columns
        #set num rows
        #set num zeroes
        #set whether its symetric

        if @matrix.save!
          flash[:notice] = "Matrix Saved and awaiting Verification"
          redirect_to index_path
        else
          #failure
          flash[:notice] = "Failed to save matrix"
          redirect_to matrices_new_path
        end
      end
    else
      flash[:notice] = "Invalid Captcha"
      redirect_to matrices_new_path
    end
  end

  def new
    @kinds = Matrix.order('kind asc').uniq.pluck(:kind)
    @kinds.map! do |x| 
      x = x.titleize.gsub(/2\sD/, '2D').gsub(/3\sD/, '3D')
    end
    @kinds.push("Other")
  end

  def destroy
  end

  def update
    id = params[:format]
    @matrix = Matrix.find(id)
    @matrix.toggle_pending
    @matrix.save!
    if @matrix.pending?
      flash[:notice] = "#{@matrix.name} is now pending"
    else
      flash[:notice] = "#{@matrix.name} has been added to the collection"
    end
    redirect_to index_path
  end

end
