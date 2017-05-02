Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #CREATE
  get("/directors/new", { :controller => "directors", :action => "new_director" })

  get("/create_director", { :controller => "directors", :action => "create_row" })

  #READ
  get("/directors", { :controller => "directors", :action => "director_index" })
  get("/index", { :controller => "directors", :action => "director_index" })

  get("/directors/:director_id", { :controller => "directors", :action => "show" })

  #UPDATE
  get("/directors/:director_id/edit", { :controller => "directors", :action => "edit_director" })

  get("/update_director/:director_id", { :controller => "directors", :action => "update_row" })

  #DELETE
  get("/directors/:director_id/delete", { :controller => "directors", :action => "delete_row" })
end
