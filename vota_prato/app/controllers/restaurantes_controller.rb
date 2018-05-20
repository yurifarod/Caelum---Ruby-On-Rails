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
    if @restaurante.save
      redirect_to action: "show", id: @restaurante
    else
      render action: "new"
    end
  end

  def edit
    @restaurante = Restaurante.find(params[:id])
  end

  def update
    @restaurante = Restaurante.find(params[:id])
    @restaurante.update_attributes(restaurante_params)
    redirect_to action: "show", id: @restaurante
  end
end
