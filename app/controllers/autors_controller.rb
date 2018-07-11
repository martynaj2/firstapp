class AutorsController < ApplicationController
  def index
    #zmienna lokalna, nie jest widoczna w widoku, wiec robimy zmienna instacji
    @autors = Autor.all
  end

  def show
    #chcemy znalezc konkretnego autora po id, z URL, /autors/xx
    @autor = Autor.find(params[:id])
  end

  def new
    @autor = Autor.new
  end

# redirect robi pelne przekierowanie, render nie robi prawie nic,
# bierze tylko caly html i wkleja cos innego
  def create
    @autor = Autor.new(autor_params)
      if @autor.save
        redirect_to autors_path
      else
        render :new
      end
  end

  private

  def autor_params
      params.require(:autor).permit(:name, :surname, :age)
  end
end
