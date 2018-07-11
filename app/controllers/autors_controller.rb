class AutorsController < ApplicationController
  def index
    #zmienna lokalna, nie jest widoczna w widoku, wiec robimy zmienna instacji
    @autors = Autor.all
  end
end
