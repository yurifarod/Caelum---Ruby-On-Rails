class ClientesController < ApplicationController

  def index
    @clientes = Cliente.order :nome
  end

  def new
    @clientes = Cliente.new
  end

  def create
    @clientes = Cliente.new params.require(:cliente).permit(:nome, :idade)
    @clientes.save
    if @clientes.save
      redirect_to action: "show", id: @clientes
    else
      render action: "new"
    end
  end
end
