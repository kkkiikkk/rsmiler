class UsController < ApplicationController
  before_action :set_u, only: %i[ show edit update destroy ]

  # GET /us or /us.json
  def index
    @us = U.all
  end

  # GET /us/1 or /us/1.json
  def show
  end

  # GET /us/new
  def new
    @u = U.new
  end

  # GET /us/1/edit
  def edit
  end

  # POST /us or /us.json
  def create
    @u = U.new(u_params)

    respond_to do |format|
      if @u.save
        format.html { redirect_to u_url(@u), notice: "U was successfully created." }
        format.json { render :show, status: :created, location: @u }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @u.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /us/1 or /us/1.json
  def update
    respond_to do |format|
      if @u.update(u_params)
        format.html { redirect_to u_url(@u), notice: "U was successfully updated." }
        format.json { render :show, status: :ok, location: @u }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @u.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /us/1 or /us/1.json
  def destroy
    @u.destroy!

    respond_to do |format|
      format.html { redirect_to us_url, notice: "U was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_u
      @u = U.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def u_params
      params.fetch(:u, {})
    end
end
