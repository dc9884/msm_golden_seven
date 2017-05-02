class DirectorsController < ApplicationController

def new_director

  render("directors/new_director.html.erb")
end

def create_row

  d = Director.new
  d.name = params["director_name"]
  d.bio = params["director_bio"]
  d.dob = params["director_dob"]
  d.image_url = params["director_image_url"]
  d.save

redirect_to("/directors/")
end

def director_index

  @all_directors = Director.all

render("/directors/index.html.erb")
end

def show

  @director = Director.find(params[:director_id])

  @director_id = @director.id
  @director_name = @director.name
  @director_bio = @director.bio
  @director_dob = @director.dob
  @director_image = @director.image_url

  @created = @director.created_at

  render("/directors/show.html.erb")
end

def edit_director

  @director = Director.find(params[:director_id])

  @director_id = @director.id
  @director_name = @director.name
  @director_bio = @director.bio
  @director_dob = @director.dob
  @director_image = @director.image_url

  @created = @director.created_at

  render("/directors/edit_director.html.erb")

end

def update_row

  d = Director.new
  d.name = params["director_name"]
  d.bio = params["director_bio"]
  d.dob = params["director_dob"]
  d.image_url = params["director_image_url"]
  d.save

  redirect_to("/directors/#{d.id}")
end

def delete_row

  d = Director.find(params[:director_id])
  d = d.delete

  redirect_to("/directors")

end


end
