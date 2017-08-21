Rails.application.routes.draw do
  
  devise_for :users
  root 'artworks#index'
  
  # Routes for the Response resource:
  # CREATE
  get "/responses/new", :controller => "responses", :action => "new"
  post "/create_response", :controller => "responses", :action => "create"

  # READ
  get "/responses", :controller => "responses", :action => "index"
  get "/responses/:id", :controller => "responses", :action => "show"

  # UPDATE
  get "/responses/:id/edit", :controller => "responses", :action => "edit"
  post "/update_response/:id", :controller => "responses", :action => "update"

  # DELETE
  get "/delete_response/:id", :controller => "responses", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Feeling resource:
  # CREATE
  get "/feelings/new", :controller => "feelings", :action => "new"
  post "/create_feeling", :controller => "feelings", :action => "create"

  # READ
  get "/feelings", :controller => "feelings", :action => "index"
  get "/feelings/:id", :controller => "feelings", :action => "show"

  # UPDATE
  get "/feelings/:id/edit", :controller => "feelings", :action => "edit"
  post "/update_feeling/:id", :controller => "feelings", :action => "update"

  # DELETE
  get "/delete_feeling/:id", :controller => "feelings", :action => "destroy"
  #------------------------------

  # Routes for the Follow resource:
  # CREATE
  get "/follows/new", :controller => "follows", :action => "new"
  post "/create_follow", :controller => "follows", :action => "create"

  # READ
  get "/follows", :controller => "follows", :action => "index"
  get "/follows/:id", :controller => "follows", :action => "show"

  # UPDATE
  get "/follows/:id/edit", :controller => "follows", :action => "edit"
  post "/update_follow/:id", :controller => "follows", :action => "update"

  # DELETE
  get "/delete_follow/:id", :controller => "follows", :action => "destroy"
  #------------------------------

  # Routes for the Engagement resource:
  # CREATE
  get "/engagements/new", :controller => "engagements", :action => "new"
  post "/create_engagement", :controller => "engagements", :action => "create"

  # READ
  get "/engagements", :controller => "engagements", :action => "index"
  get "/engagements/:id", :controller => "engagements", :action => "show"

  # UPDATE
  get "/engagements/:id/edit", :controller => "engagements", :action => "edit"
  post "/update_engagement/:id", :controller => "engagements", :action => "update"

  # DELETE
  get "/delete_engagement/:id", :controller => "engagements", :action => "destroy"
  #------------------------------

  # Routes for the Artwork resource:
  # CREATE
  get "/artworks/new", :controller => "artworks", :action => "new"
  post "/create_artwork", :controller => "artworks", :action => "create"

  # READ
  get "/artworks", :controller => "artworks", :action => "index"
  get "/artworks/:id", :controller => "artworks", :action => "show"

  # UPDATE
  get "/artworks/:id/edit", :controller => "artworks", :action => "edit"
  post "/update_artwork/:id", :controller => "artworks", :action => "update"

  # DELETE
  get "/delete_artwork/:id", :controller => "artworks", :action => "destroy"
  #------------------------------

  # Routes for the Artist resource:
  # CREATE
  get "/artists/new", :controller => "artists", :action => "new"
  post "/create_artist", :controller => "artists", :action => "create"

  # READ
  get "/artists", :controller => "artists", :action => "index"
  get "/artists/:id", :controller => "artists", :action => "show"

  # UPDATE
  get "/artists/:id/edit", :controller => "artists", :action => "edit"
  post "/update_artist/:id", :controller => "artists", :action => "update"

  # DELETE
  get "/delete_artist/:id", :controller => "artists", :action => "destroy"
  #------------------------------

 

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
   #USERS
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
