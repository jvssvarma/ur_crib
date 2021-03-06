class CribsController < ApplicationController
  before_action :set_crib, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_member!, except: [:index]

  # GET /cribs
  # GET /cribs.json
  def index
    @cribs = Crib.all
  end

  # GET /cribs/1
  # GET /cribs/1.json
  def show
  end

  # GET /cribs/new
  def new
    @crib = current_member.cribs.build
  end

  # GET /cribs/1/edit
  def edit
  end

  # POST /cribs
  # POST /cribs.json
  def create
    @crib = current_member.cribs.build(crib_params)

    respond_to do |format|
      if @crib.save
        format.html { redirect_to @crib, notice: 'Crib was successfully created.' }
        format.json { render :show, status: :created, location: @crib }
      else
        format.html { render :new }
        format.json { render json: @crib.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cribs/1
  # PATCH/PUT /cribs/1.json
  def update
    respond_to do |format|
      if @crib.update(crib_params)
        format.html { redirect_to @crib, notice: 'Crib was successfully updated.' }
        format.json { render :show, status: :ok, location: @crib }
      else
        format.html { render :edit }
        format.json { render json: @crib.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cribs/1
  # DELETE /cribs/1.json
  def destroy
    @crib.destroy
    respond_to do |format|
      format.html { redirect_to cribs_url, notice: 'Crib was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crib
      @crib = Crib.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crib_params
      params.require(:crib).permit(:title, :summary, :rent, :availability, :room_type, :bath_type, :owner_type, :lease_type, :prefer_gender, :extras, :pets, :smoking,
                                   :washndry, :microwave, :heater, :wifi, :furnish, {pics: []})
    end
end
