class MatricesController < ApplicationController

  ### Resources methods ########################################################

  def index
    # List of permitted fields for params
    permitted_params = params.permit([{filterrific: [:reset_filterrific, :sorted_by, :search_query,
      :min_id,                 :max_id,
      :min_year,               :max_year,
      :min_rows,               :max_rows, 
      :min_cols,               :max_cols, 
      :min_nonzeros,           :max_nonzeros,
      :min_pattern_symmetry,   :max_pattern_symmetry, 
      :min_numerical_symmetry, :max_numerical_symmetry, 
      :min_strongly_connected_components, :max_strongly_connected_components,
      :min_dmperm_blocks, :max_dmperm_blocks,
      :shape, :structure, :positive_definite, :rb_type,
      :name_query, :group_query, :description_query, :author_query, :editor_query, :notes_query]},
      :page, :per_page, :utf8, :_])

    # Initialize filterrific filtering system
    @filterrific = initialize_filterrific(
      Matrix,
      permitted_params[:filterrific],
      select_options: {
        sorted_by: Matrix.options_for_sorted_by,
        positive_definite_options: ['Yes', 'No'],
        structure_options: ['Square', 'Rectangular', 'Symmetric', 'Unsymmetric', 'Hermitian', 'Skew-Symmetric'],
        rutherford_boeing_options: ['Real', 'Complex', 'Integer', 'Binary']
      }
    ) or return
    
    # Determine which filters are enabled (checkboxes are checked)
    # For example, if either min_rows or max_rows are present, we need to filter by number of rows
    @checked = {}
    @checked[:rows] = helpers.is_checked([:min_rows, :max_rows], @filterrific)
    @checked[:cols] = helpers.is_checked([:min_cols, :max_cols], @filterrific)
    @checked[:nonzeros] = helpers.is_checked([:min_nonzeros, :max_nonzeros], @filterrific)
    @checked[:pattern_symmetry] = helpers.is_checked([:min_pattern_symmetry, :max_pattern_symmetry], @filterrific)
    @checked[:numerical_symmetry] = helpers.is_checked([:min_numerical_symmetry, :max_numerical_symmetry], @filterrific)
    @checked[:strongly_connected_components] = helpers.is_checked([:min_strongly_connected_components, :max_strongly_connected_components], @filterrific)
    @checked[:positive_definite] = helpers.is_checked([:positive_definite], @filterrific)
    @checked[:rb_type] = helpers.is_checked([:rb_type], @filterrific)

    @matrices = @filterrific.find.page(permitted_params[:page])

    @per_page = helpers.per_page(permitted_params, session)
    
    @matrices = @matrices.paginate(page: permitted_params[:page], per_page: @per_page)

    # Allow the index page to respond to HTML and javascript (ajax)
    respond_to do |format|
      format.html
      format.js
    end

  rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Had to reset filterrific params: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
  end

  # Show the details page for a matrix
  def show
    # Get matrix info from the params
    matrix_id, group, name = params.values_at(:matrix_id, :group, :name)

    @matrix = nil;

    if matrix_id.nil?
      # If no matrix_id is given, search for the matrix by group/name
      @matrix = Matrix.find_by(name: name, group: group)
    else
      # If we have an id number, use that (it's faster)
      @matrix = Matrix.find_by(matrix_id: matrix_id)
    end

    if !@matrix
      # If we couldn't find the matrix, render the matrix not found page
      return render :not_found, status: 404, content_type: 'text/html', template: 'matrices/not_found.html.haml'
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
      flash[:success] = "Matrix submitted successfully!"
      redirect_to :index
    else
      flash[:danger] = "Please verify that you are not a robot."
      redirect_to :submit
    end
  end

end
