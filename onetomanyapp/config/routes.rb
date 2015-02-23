Rails.application.routes.draw do


resources :authors do
resources :books, shallow: true
end
# YOU NEED THE RESOURCES THING for the author_path syntax to work


  root 'authors#index'

  get '/authors', to: "authors#index"
  
   get '/authors/new', to: "authors#new"

    get '/authors/:id', to: "authors#show"

     get '/authors', to: "authors#edit"

  post '/authors', to: "authors#create"

    put '/authors:id', to: "author#update"

      patch '/authors/:id', to: "authors#update"

        delete '/authors/:id', to: "authors#destroy"


 

#   Prefix Verb   URI Pattern                 Controller#Action
# books_index GET    /books/index(.:format)      books#index
#   books_new GET    /books/new(.:format)        books#new
#  books_show GET    /books/show(.:format)       books#show
#  books_edit GET    /books/edit(.:format)       books#edit
#     authors GET    /authors(.:format)          authors#index
#             POST   /authors(.:format)          authors#create
#  new_author GET    /authors/new(.:format)      authors#new
# edit_author GET    /authors/:id/edit(.:format) authors#edit
#      author GET    /authors/:id(.:format)      authors#show
#             PATCH  /authors/:id(.:format)      authors#update
#             PUT    /authors/:id(.:format)      authors#update
#             DELETE /authors/:id(.:format)      authors#destroy
#        root GET    /                           authors#index
#             GET    /authors(.:format)          authors#index
# authors_new GET    /authors/new(.:format)      authors#new
#             GET    /authors/:id(.:format)      authors#show
#             GET    /authors(.:format)          authors#edit
#             POST   /authors(.:format)          authors#create
#             PUT    /authors:id(.:format)       author#update
#             PATCH  /authors/:id(.:format)      authors#update
#             POST   /authors(.:format)          authors#create
#             DELETE /authors/:id(.:format)      authors#destroy

  

 
end
