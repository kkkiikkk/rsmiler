class UserssdsController < ApplicationController
  before_action :set_userssd, only: %i[ show edit update destroy ]

  # GET /userssds or /userssds.json
  def index
    @userssds = Userssd.all
  end

  # GET /userssds/1 or /userssds/1.json
  def show
  end

  # GET /userssds/new
  def new
    @userssd = Userssd.new
  end

  # GET /userssds/1/edit
  def edit
  end

  # POST /userssds or /userssds.json
  def create
    @userssd = Userssd.new(userssd_params)

    respond_to do |format|
      if @userssd.save
        format.html { redirect_to userssd_url(@userssd), notice: "Userssd was successfully created." }
        format.json { render :show, status: :created, location: @userssd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @userssd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userssds/1 or /userssds/1.json
  def update
    respond_to do |format|
      if @userssd.update(userssd_params)
        format.html { redirect_to userssd_url(@userssd), notice: "Userssd was successfully updated." }
        format.json { render :show, status: :ok, location: @userssd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @userssd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userssds/1 or /userssds/1.json
  def destroy
    @userssd.destroy!

    respond_to do |format|
      format.html { redirect_to userssds_url, notice: "Userssd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userssd
      @userssd = Userssd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userssd_params
      params.fetch(:userssd, {})
    end
end
