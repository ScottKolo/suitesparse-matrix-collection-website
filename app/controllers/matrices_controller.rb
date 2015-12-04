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
    #Check the captcha
    if simple_captcha_valid?
      @matrix = Matrix.new(matrix_params)
      #Check whether the matrix has all of the necessary fields
      if @matrix.valid?

        #Process matrix here
        @matrix.pending=true
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

  def matrix_params
    params.require(:matrix).permit(:group, :name, :author, :notes, :author, :editor, :kind)
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
    # Parse sorting param
    newSort = !params[:sort].nil?
    if newSort
      session[:sort_old] = session[:sort]
      session[:sort] = params[:sort]

      # If new sort is same as old sort, reverse direction.
      if session[:sort] == session[:sort_old]
        if session[:sort_dir] == "up"
          session[:sort_dir] = "down"
        else
          session[:sort_dir] = "up"
        end
      # Otherwise, sort ascending by default
      else
        session[:sort_dir] = "up"
      end
    end

    # Parse filter params
    newFilter = !params[:filter].nil?
    if newFilter then session[:filter] = params[:filter] end

    # Parse pagination params
    if !params[:per_page].nil? then session[:per_page] = params[:per_page] end

    # If new params, reload
    if newSort or newFilter# or newPaginate
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
          if value != "true" then
            @matrices = @matrices.where(%{lower("#{attribute}") like ?},"%#{value}%".downcase) #compares lowercase attribute to lower case input string, finds substrings
          else
            @matrices = @matrices.where(%{"#{attribute}" = ?}, value)
          end
        end
      end
    end
  end

  def apply_sort
    if !session[:sort].nil?
      s = %{"#{session[:sort]}"};
      # Set sort direction
      if session[:sort_dir] == "up"
        @matrices = @matrices.order(s + " ASC")
      else
        @matrices = @matrices.order(s + " DESC")
      end
    else
      session[:sort] = "group"
      session[:sort_old] = "group"
      session[:sort_dir] = "up"
      @matrices = @matrices.order(%{"group" ASC})
    end
  end

  def apply_pagination
    @per_page = session[:per_page] || Matrix.per_page || 20
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
