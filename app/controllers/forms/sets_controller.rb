class Forms::SetsController < ApplicationController
  before_action :set_forms_set, only: [:show, :edit, :update, :destroy]

  # GET /forms/sets
  # GET /forms/sets.json
  def index
    @forms_sets = Forms::Set.all
  end

  # GET /forms/sets/1
  # GET /forms/sets/1.json
  def show
  end

  # GET /forms/sets/new
  def new
    @forms_set = Forms::Set.new
  end

  # GET /forms/sets/1/edit
  def edit
  end

  # POST /forms/sets
  # POST /forms/sets.json
  def create
    @forms_set = Forms::Set.new(forms_set_params)

    respond_to do |format|
      if @forms_set.save
        format.html { redirect_to @forms_set, notice: 'Set was successfully created.' }
        format.json { render :show, status: :created, location: @forms_set }
      else
        format.html { render :new }
        format.json { render json: @forms_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/sets/1
  # PATCH/PUT /forms/sets/1.json
  def update
    respond_to do |format|
      if @forms_set.update(forms_set_params)
        format.html { redirect_to @forms_set, notice: 'Set was successfully updated.' }
        format.json { render :show, status: :ok, location: @forms_set }
      else
        format.html { render :edit }
        format.json { render json: @forms_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/sets/1
  # DELETE /forms/sets/1.json
  def destroy
    @forms_set.destroy
    respond_to do |format|
      format.html { redirect_to forms_sets_url, notice: 'Set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forms_set
      @forms_set = Forms::Set.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forms_set_params
      params.require(:forms_set).permit(:name, :description)
    end
end
