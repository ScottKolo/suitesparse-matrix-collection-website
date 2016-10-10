class MatricesController < ApplicationController

  ### Resources methods ########################################################

  def index
    permitted_params = params.permit([{filterrific: [:reset_filterrific, :sorted_by, :search_query,
      :min_rows, :max_rows, :min_cols, :max_cols, :min_nonzeros, :max_nonzeros,
      :min_pattern_symmetry, :max_pattern_symmetry, :min_numerical_symmetry,
      :max_numerical_symmetry, :min_strongly_connected_components,
      :max_strongly_connected_components, :positive_definite]}, :page, :per_page, :utf8, :_])

    @filterrific = initialize_filterrific(
      Matrix,
      permitted_params[:filterrific],
      select_options: {
        sorted_by: Matrix.options_for_sorted_by,
        positive_definite_options: ['Yes', 'No'],
      }
    ) or return
    
    @matrices = @filterrific.find.page(permitted_params[:page])

    @per_page = helpers.per_page(permitted_params, session)
    
    @matrices = @matrices.paginate(page: permitted_params[:page], per_page: @per_page)

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
    @kinds = helpers.kind_submission_list
    @new_matrix = SubmittedMatrix.new
  end

  def submit
    # Verify the reCaptcha
    if verify_recaptcha
      permitted_params = params[:submitted_matrix].permit(:submitter_name, 
                :submitter_email, :display_email, :name, :kind, :notes, 
                :submitter_url, :submitter_confidentiality)
      @new_matrix = SubmittedMatrix.new(permitted_params)
      @new_matrix.ip = request.remote_ip
      email = AdminNotifierMailer.send_matrix_submitted_email(@new_matrix)
      email.deliver_now
      flash[:notice] = "Matrix submitted successfully!"
      redirect_to :index
    else
      flash[:notice] = "Please verify that you are not a robot."
      redirect_to :submit
    end
  end

end
