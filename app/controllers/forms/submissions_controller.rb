class Forms::SubmissionsController < ApplicationController
  before_action :set_forms_submission, only: [:show, :edit, :update, :destroy]

  # GET /forms/submissions
  # GET /forms/submissions.json
  def index
    @forms_submissions = Forms::Submission.all
  end

  # GET /forms/submissions/1
  # GET /forms/submissions/1.json
  def show
  end

  # GET /forms/submissions/new
  def new
    @forms_submission = Forms::Submission.new
  end

  # GET /forms/submissions/1/edit
  def edit
  end

  # POST /forms/submissions
  # POST /forms/submissions.json
  def create
    @forms_submission = Forms::Submission.new(forms_submission_params)

    respond_to do |format|
      if @forms_submission.save
        format.html { redirect_to @forms_submission, notice: 'Submission was successfully created.' }
        format.json { render :show, status: :created, location: @forms_submission }
      else
        format.html { render :new }
        format.json { render json: @forms_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/submissions/1
  # PATCH/PUT /forms/submissions/1.json
  def update
    respond_to do |format|
      if @forms_submission.update(forms_submission_params)
        format.html { redirect_to @forms_submission, notice: 'Submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @forms_submission }
      else
        format.html { render :edit }
        format.json { render json: @forms_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/submissions/1
  # DELETE /forms/submissions/1.json
  def destroy
    @forms_submission.destroy
    respond_to do |format|
      format.html { redirect_to forms_submissions_url, notice: 'Submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forms_submission
      @forms_submission = Forms::Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forms_submission_params
      params.require(:forms_submission).permit(:set_id)
    end
end
