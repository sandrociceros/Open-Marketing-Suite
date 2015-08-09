class Forms::EntriesController < ApplicationController
  before_action :set_forms_entry, only: [:show, :edit, :update, :destroy]

  # GET /forms/entries
  # GET /forms/entries.json
  def index
    @forms_entries = Forms::Entry.all
  end

  # GET /forms/entries/1
  # GET /forms/entries/1.json
  def show
  end

  # GET /forms/entries/new
  def new
    @forms_entry = Forms::Entry.new
  end

  # GET /forms/entries/1/edit
  def edit
  end

  # POST /forms/entries
  # POST /forms/entries.json
  def create
    @forms_entry = Forms::Entry.new(forms_entry_params)

    respond_to do |format|
      if @forms_entry.save
        format.html { redirect_to @forms_entry, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @forms_entry }
      else
        format.html { render :new }
        format.json { render json: @forms_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/entries/1
  # PATCH/PUT /forms/entries/1.json
  def update
    respond_to do |format|
      if @forms_entry.update(forms_entry_params)
        format.html { redirect_to @forms_entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @forms_entry }
      else
        format.html { render :edit }
        format.json { render json: @forms_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/entries/1
  # DELETE /forms/entries/1.json
  def destroy
    @forms_entry.destroy
    respond_to do |format|
      format.html { redirect_to forms_entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forms_entry
      @forms_entry = Forms::Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forms_entry_params
      params[:forms_entry]
    end
end
