Rails.application.routes.draw do
  # Routes for the Deal resource:
  # CREATE
  get "/deals/new", :controller => "deals", :action => "new"
  post "/create_deal", :controller => "deals", :action => "create"

  # READ
  get "/deals", :controller => "deals", :action => "index"
  get "/deals/:id", :controller => "deals", :action => "show"

  # UPDATE
  get "/deals/:id/edit", :controller => "deals", :action => "edit"
  post "/update_deal/:id", :controller => "deals", :action => "update"

  # DELETE
  get "/delete_deal/:id", :controller => "deals", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
