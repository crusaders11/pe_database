Rails.application.routes.draw do
  root :to => "deals#index"
  # Routes for the Note resource:
  # CREATE
  get "/notes/new", :controller => "notes", :action => "new"
  post "/create_note", :controller => "notes", :action => "create"

  # READ
  get "/notes", :controller => "notes", :action => "index"
  get "/notes/:id", :controller => "notes", :action => "show"

  # UPDATE
  get "/notes/:id/edit", :controller => "notes", :action => "edit"
  post "/update_note/:id", :controller => "notes", :action => "update"

  # DELETE
  get "/delete_note/:id", :controller => "notes", :action => "destroy"
  #------------------------------

  # Routes for the Broker resource:
  # CREATE
  get "/brokers/new", :controller => "brokers", :action => "new"
  post "/create_broker", :controller => "brokers", :action => "create"

  # READ
  get "/brokers", :controller => "brokers", :action => "index"
  get "/brokers/:id", :controller => "brokers", :action => "show"

  # UPDATE
  get "/brokers/:id/edit", :controller => "brokers", :action => "edit"
  post "/update_broker/:id", :controller => "brokers", :action => "update"

  # DELETE
  get "/delete_broker/:id", :controller => "brokers", :action => "destroy"
  #------------------------------

  # Routes for the Industry resource:
  # CREATE
  get "/industries/new", :controller => "industries", :action => "new"
  post "/create_industry", :controller => "industries", :action => "create"

  # READ
  get "/industries", :controller => "industries", :action => "index"
  get "/industries/:id", :controller => "industries", :action => "show"

  # UPDATE
  get "/industries/:id/edit", :controller => "industries", :action => "edit"
  post "/update_industry/:id", :controller => "industries", :action => "update"

  # DELETE
  get "/delete_industry/:id", :controller => "industries", :action => "destroy"
  #------------------------------

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
