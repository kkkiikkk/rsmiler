class SdsasController < ApplicationController
  before_action :set_sdsa, only: %i[ show edit update destroy ]

  # GET /sdsas or /sdsas.json
  def index
    @sdsas = Sdsa.all
  end

  # GET /sdsas/1 or /sdsas/1.json
  def show
  end

  # GET /sdsas/new
  def new
    @sdsa = Sdsa.new
  end

  # GET /sdsas/1/edit
  def edit
  end

  # POST /sdsas or /sdsas.json
  def create
    @sdsa = Sdsa.new(sdsa_params)

    respond_to do |format|
      if @sdsa.save
        format.html { redirect_to sdsa_url(@sdsa), notice: "Sdsa was successfully created." }
        format.json { render :show, status: :created, location: @sdsa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sdsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sdsas/1 or /sdsas/1.json
  def update
    respond_to do |format|
      if @sdsa.update(sdsa_params)
        format.html { redirect_to sdsa_url(@sdsa), notice: "Sdsa was successfully updated." }
        format.json { render :show, status: :ok, location: @sdsa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sdsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sdsas/1 or /sdsas/1.json
  def destroy
    @sdsa.destroy!

    respond_to do |format|
      format.html { redirect_to sdsas_url, notice: "Sdsa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sdsa
      @sdsa = Sdsa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sdsa_params
      params.fetch(:sdsa, {})
    end
end
