class RotaController < ApplicationController
  before_action :set_rotum, only: [:show, :edit, :update, :destroy]

  # GET /rota
  # GET /rota.json
  def index
    @rota = Rotum.all
  end

  # GET /rota/1
  # GET /rota/1.json
  def show
  end

  # GET /rota/new
  def new
    @rotum = Rotum.new
  end

  # GET /rota/1/edit
  def edit
  end

  # POST /rota
  # POST /rota.json
  def create
    @rotum = Rotum.new(rotum_params)

    respond_to do |format|
      if @rotum.save
        format.html { redirect_to @rotum, notice: 'Rotum was successfully created.' }
        format.json { render :show, status: :created, location: @rotum }
      else
        format.html { render :new }
        format.json { render json: @rotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rota/1
  # PATCH/PUT /rota/1.json
  def update
    respond_to do |format|
      if @rotum.update(rotum_params)
        format.html { redirect_to @rotum, notice: 'Rotum was successfully updated.' }
        format.json { render :show, status: :ok, location: @rotum }
      else
        format.html { render :edit }
        format.json { render json: @rotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rota/1
  # DELETE /rota/1.json
  def destroy
    @rotum.destroy
    respond_to do |format|
      format.html { redirect_to rota_url, notice: 'Rotum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotum
      @rotum = Rotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rotum_params
      params.require(:rotum).permit(:destino, :origem, :linha_id)
    end
end
