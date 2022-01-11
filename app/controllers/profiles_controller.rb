class ProfilesController < ApplicationController
  set :default_content_type, 'application/json'

  def index
    profiles = Profile.all
    render json: profiles, status: :ok
  end 

  post "/profiles" do # This should be able to create new users 
    new_profile = Profile.create(
      user_name: params[:user_name],
      profile_img: params[:profile_img]
    )
    new_profile.to_json
  end

  delete "/profiles/:id" do # This should be able to delete users 
    delete_user = Profile.find(params[:id])
    delete_user.destroy
  end

end
