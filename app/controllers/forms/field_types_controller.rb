class Forms::FieldTypesController < ApplicationController
  before_action :set_forms_field_type, only: [:show, :edit, :update, :destroy]

  # GET /forms/field_types
  # GET /forms/field_types.json
  def index
    @forms_field_types = Forms::FieldType.all
  end

  # GET /forms/field_types/1
  # GET /forms/field_types/1.json
  def show
  end

  # GET /forms/field_types/new
  def new
    @forms_field_type = Forms::FieldType.new
  end

  # GET /forms/field_types/1/edit
  def edit
  end

  # POST /forms/field_types
  # POST /forms/field_types.json
  def create
    @forms_field_type = Forms::FieldType.new(forms_field_type_params)

    respond_to do |format|
      if @forms_field_type.save
        format.html { redirect_to @forms_field_type, notice: 'Field type was successfully created.' }
        format.json { render :show, status: :created, location: @forms_field_type }
      else
        format.html { render :new }
        format.json { render json: @forms_field_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/field_types/1
  # PATCH/PUT /forms/field_types/1.json
  def update
    respond_to do |format|
      if @forms_field_type.update(forms_field_type_params)
        format.html { redirect_to @forms_field_type, notice: 'Field type was successfully updated.' }
        format.json { render :show, status: :ok, location: @forms_field_type }
      else
        format.html { render :edit }
        format.json { render json: @forms_field_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/field_types/1
  # DELETE /forms/field_types/1.json
  def destroy
    @forms_field_type.destroy
    respond_to do |format|
      format.html { redirect_to forms_field_types_url, notice: 'Field type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forms_field_type
      @forms_field_type = Forms::FieldType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forms_field_type_params
      params.require(:forms_field_type).permit(:name, :shortcode, :description)
    end
end
