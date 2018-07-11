class AutorsController < ApplicationController
  def index
    #zmienna lokalna, nie jest widoczna w widoku, wiec robimy zmienna instacji
    @autors = Autor.all
  end

  def show
    #chcemy znalezc konkretnego autora po id, z URL, /autors/xx
    @autor = Autor.find(params[:id])
  end
end
