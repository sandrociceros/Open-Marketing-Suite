class Forms::ResponsesController < ApplicationController
  before_action :set_forms_response, only: [:show, :edit, :update, :destroy]

  # GET /forms/responses
  # GET /forms/responses.json
  def index
    @forms_responses = Forms::Response.all
  end

  # GET /forms/responses/1
  # GET /forms/responses/1.json
  def show
  end

  # GET /forms/responses/new
  def new
    @forms_response = Forms::Response.new
  end

  # GET /forms/responses/1/edit
  def edit
  end

  # POST /forms/responses
  # POST /forms/responses.json
  def create
    @forms_response = Forms::Response.new(forms_response_params)

    respond_to do |format|
      if @forms_response.save
        format.html { redirect_to @forms_response, notice: 'Response was successfully created.' }
        format.json { render :show, status: :created, location: @forms_response }
      else
        format.html { render :new }
        format.json { render json: @forms_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/responses/1
  # PATCH/PUT /forms/responses/1.json
  def update
    respond_to do |format|
      if @forms_response.update(forms_response_params)
        format.html { redirect_to @forms_response, notice: 'Response was successfully updated.' }
        format.json { render :show, status: :ok, location: @forms_response }
      else
        format.html { render :edit }
        format.json { render json: @forms_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/responses/1
  # DELETE /forms/responses/1.json
  def destroy
    @forms_response.destroy
    respond_to do |format|
      format.html { redirect_to forms_responses_url, notice: 'Response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forms_response
      @forms_response = Forms::Response.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forms_response_params
      params.require(:forms_response).permit(:question_id, :set_id, :response_text, :field_type_id, :entry_id)
    end
end
