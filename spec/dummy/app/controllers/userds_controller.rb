class UserdsController < ApplicationController
  before_action :set_userd, only: %i[ show edit update destroy ]

  # GET /userds or /userds.json
  def index
    @userds = Userd.all
  end

  # GET /userds/1 or /userds/1.json
  def show
  end

  # GET /userds/new
  def new
    @userd = Userd.new
  end

  # GET /userds/1/edit
  def edit
  end

  # POST /userds or /userds.json
  def create
    @userd = Userd.new(userd_params)

    respond_to do |format|
      if @userd.save
        format.html { redirect_to userd_url(@userd), notice: "Userd was successfully created." }
        format.json { render :show, status: :created, location: @userd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @userd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userds/1 or /userds/1.json
  def update
    respond_to do |format|
      if @userd.update(userd_params)
        format.html { redirect_to userd_url(@userd), notice: "Userd was successfully updated." }
        format.json { render :show, status: :ok, location: @userd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @userd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userds/1 or /userds/1.json
  def destroy
    @userd.destroy!

    respond_to do |format|
      format.html { redirect_to userds_url, notice: "Userd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userd
      @userd = Userd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userd_params
      params.fetch(:userd, {})
    end
end
