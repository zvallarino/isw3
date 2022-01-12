class ProfilesController < ApplicationController

  def index
    profiles = Profile.all
    render json: profiles, status: :ok
  end 

  def show

    profile = find_profile
    render json: profile, status: :ok

  end 

  def create
    profile = Profile.create!(profile_params)
    render json: profile, status:201
  end 

  def destroy
    profile = find_profile
    camper.destroy
    head :no_content
  end 

  private

  def profile_params
      params.permit(:user_name, :profile_img)
  end

  def find_profile
    Profile.find(params[:id])
  end 

  end 

 
