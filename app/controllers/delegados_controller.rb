class DelegadosController < ApplicationController
  before_action :set_delegado, only: [:show, :edit, :update, :destroy]

$comite = Comite.all
  # GET /delegados
  # GET /delegados.json
  def index
    @delegados = Delegado.all
  end

  # GET /delegados/1
  # GET /delegados/1.json
  def show
  end

  # GET /delegados/new
  def new
    @comite = Comite.all
    @delegado = Delegado.new
  end

  # GET /delegados/1/edit
  def edit
  end

  # POST /delegados
  # POST /delegados.json
  def create
    @delegado = Delegado.new(delegado_params)

    respond_to do |format|
      if @delegado.save
        format.html { redirect_to @delegado, notice: 'Delegado was successfully created.' }
        format.json { render :show, status: :created, location: @delegado }
      else
        format.html { render :new }
        format.json { render json: @delegado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delegados/1
  # PATCH/PUT /delegados/1.json
  def update
    respond_to do |format|
      if @delegado.update(delegado_params)
        format.html { redirect_to @delegado, notice: 'Delegado was successfully updated.' }
        format.json { render :show, status: :ok, location: @delegado }
      else
        format.html { render :edit }
        format.json { render json: @delegado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delegados/1
  # DELETE /delegados/1.json
  def destroy
    @delegado.destroy
    respond_to do |format|
      format.html { redirect_to delegados_url, notice: 'Delegado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delegado
      @delegado = Delegado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delegado_params
      params.require(:delegado).permit(:pais, :comite_id)
    end
end
