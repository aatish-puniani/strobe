class PhotographersController < ApplicationController
  def index
    @photographers = Photographer.all
    @occupations = Occupation.all
    @citys = City.all
  end

  def show
    photographer_id = params[:id]
    @photographer = Photographer.find_by(id: photographer_id)
  end

  def edit
    photographer_id = params[:id]
    @photographer = Photographer.find_by(id: photographer_id)
  end

  def update
    photographer_id = params[:id]
    @photographer = Photographer.find_by(id: photographer_id)
    if @assistant.update(
      name: params[:name],
      company: params[:company],
      email: params[:email],
      mobile_number: params[:mobile_number],
      studio_number: params[:studio_number],
      address: params[:address],
      clients: params[:clients],
      url: params[:url],
      user_photo: params[:user_photo],
      bio: params[:bio],
      facebook: params[:facebook],
      twitter: params[:twitter],
      instagram: params[:instagram],
      blog: params[:blog],
      years_exp: params[:years_exp],
      occupation_id: params[:occupation_id],
      city_id: params[:city_id]
    )
      flash[:success] = "Profile successfully updated!"
      redirect_to "/photographers/#{@photographer.id}"
    else
      render "edit.html.erb"
    end
  end

  def destroy
    photographer_id = params[:id]
    @photographer = Photographer.find_by(id: photographer_id)
    @photographer.destroy
    flash[:danger] = "Account successfully deleted!"
    redirect_to "/photographers"
  end
end
