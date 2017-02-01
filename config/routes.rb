Rails.application.routes.draw do
  # ßß

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #set root '/' to welcome#index
  root 'articles#index'

  #creates all 8 REST routes for a resource named :article
    # get /articles -> #index
    # post /articles -> #create
    # get /articles/new -> #new
    # get /articles/:id -> #show
    # get /articles/:id/edit -> #edit
    # put /articles/:id -> #update
    # patch /articles/:id -> #update
    # delete /articles/:id -> #destroy
  resources :articles do
    resources :comments
  end

end
