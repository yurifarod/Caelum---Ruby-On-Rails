class QualicacaosController < ApplicationController
  before_action :set_qualicacao, only: [:show, :edit, :update, :destroy]

  # GET /qualicacaos
  # GET /qualicacaos.json
  def index
    @qualicacaos = Qualicacao.all
  end

  # GET /qualicacaos/1
  # GET /qualicacaos/1.json
  def show
  end

  # GET /qualicacaos/new
  def new
    @qualicacao = Qualicacao.new
  end

  # GET /qualicacaos/1/edit
  def edit
  end

  # POST /qualicacaos
  # POST /qualicacaos.json
  def create
    @qualicacao = Qualicacao.new(qualicacao_params)

    respond_to do |format|
      if @qualicacao.save
        format.html { redirect_to @qualicacao, notice: 'Qualicacao was successfully created.' }
        format.json { render :show, status: :created, location: @qualicacao }
      else
        format.html { render :new }
        format.json { render json: @qualicacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualicacaos/1
  # PATCH/PUT /qualicacaos/1.json
  def update
    respond_to do |format|
      if @qualicacao.update(qualicacao_params)
        format.html { redirect_to @qualicacao, notice: 'Qualicacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualicacao }
      else
        format.html { render :edit }
        format.json { render json: @qualicacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualicacaos/1
  # DELETE /qualicacaos/1.json
  def destroy
    @qualicacao.destroy
    respond_to do |format|
      format.html { redirect_to qualicacaos_url, notice: 'Qualicacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualicacao
      @qualicacao = Qualicacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualicacao_params
      params.require(:qualicacao).permit(:cliente_id, :restaurante_id, :nota, :valor_gasto)
    end
end
