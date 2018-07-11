Rails.application.routes.draw do
    root 'home#welcome'
    #metoda http, potem sciezka (strukutra po /), gdzie rootuje,
    get '/autors', to: 'autors#index'
    get '/autors/:id', to: 'autors#show'
end
