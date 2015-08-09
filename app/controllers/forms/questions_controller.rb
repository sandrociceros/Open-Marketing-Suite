class Forms::QuestionsController < ApplicationController
  before_action :set_forms_set
  before_action :set_forms_question, only: [:show, :edit, :update, :destroy]

  # GET /forms/questions
  # GET /forms/questions.json
  def index
    @forms_questions =  @forms_set.questions
  end

  # GET /forms/questions/1
  # GET /forms/questions/1.json
  def show
  end

  # GET /forms/questions/new
  def new
    @forms_question = @forms_set.questions.new
  end

  # GET /forms/questions/1/edit
  def edit
  end

  # POST /forms/questions
  # POST /forms/questions.json
  def create
    @forms_question = @forms_set.questions.new(forms_question_params)

    respond_to do |format|
      if @forms_question.save
        format.html { redirect_to @forms_question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @forms_question }
      else
        format.html { render :new }
        format.json { render json: @forms_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/questions/1
  # PATCH/PUT /forms/questions/1.json
  def update
    respond_to do |format|
      if @forms_question.update(forms_question_params)
        format.html { redirect_to @forms_question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @forms_question }
      else
        format.html { render :edit }
        format.json { render json: @forms_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/questions/1
  # DELETE /forms/questions/1.json
  def destroy
    @forms_question.destroy
    respond_to do |format|
      format.html { redirect_to forms_questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_forms_set
      @forms_set = Forms::Set.find(params[:set_id])
    end

    def set_forms_question
      @forms_question = Forms::Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forms_question_params
      #Don't allow "set_id" for security purposes
      params.require(:forms_question).permit(:title, :position, :field_type_id, :placeholder_text)
    end
end
