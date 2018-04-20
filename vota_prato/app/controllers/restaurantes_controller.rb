class RestaurantesController < ApplicationController
  def index
    @restaurantes = Restaurante.order :nome
  end

  def show
    @restaurantes = Restaurante.find(params[:id])
  end

  def new
    @restaurantes = Restaurante.new
  end

  def destroy
    @restaurantes = Restaurante.find(params[:id])
    @restaurantes.destroy
    redirect_to(action: "index")
  end

  def create
    @restaurante = Restaurante.new params.require(:restaurante).permit(:nome, :endereco, :especialidade)
    @restaurante.save
  end
end
