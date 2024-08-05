class ProductdsdsasController < ApplicationController
  before_action :set_productdsdsa, only: %i[ show edit update destroy ]

  # GET /productdsdsas or /productdsdsas.json
  def index
    @productdsdsas = Productdsdsa.all
  end

  # GET /productdsdsas/1 or /productdsdsas/1.json
  def show
  end

  # GET /productdsdsas/new
  def new
    @productdsdsa = Productdsdsa.new
  end

  # GET /productdsdsas/1/edit
  def edit
  end

  # POST /productdsdsas or /productdsdsas.json
  def create
    @productdsdsa = Productdsdsa.new(productdsdsa_params)

    respond_to do |format|
      if @productdsdsa.save
        format.html { redirect_to productdsdsa_url(@productdsdsa), notice: "Productdsdsa was successfully created." }
        format.json { render :show, status: :created, location: @productdsdsa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @productdsdsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productdsdsas/1 or /productdsdsas/1.json
  def update
    respond_to do |format|
      if @productdsdsa.update(productdsdsa_params)
        format.html { redirect_to productdsdsa_url(@productdsdsa), notice: "Productdsdsa was successfully updated." }
        format.json { render :show, status: :ok, location: @productdsdsa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @productdsdsa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productdsdsas/1 or /productdsdsas/1.json
  def destroy
    @productdsdsa.destroy!

    respond_to do |format|
      format.html { redirect_to productdsdsas_url, notice: "Productdsdsa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productdsdsa
      @productdsdsa = Productdsdsa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productdsdsa_params
      params.fetch(:productdsdsa, {})
    end
end
