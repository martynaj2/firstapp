Rails.application.routes.draw do
    root 'home#welcome'
    #metoda http, potem sciezka (strukutra po /), gdzie rootuje,
    # get '/autors', to: 'autors#index', as: :autors
    # get '/autors/:id', to: 'autors#show', as: :autor
    # get '/autor/new', to: 'autors#new', as: :new_autor
    resources :autors
    resources :posts
end
