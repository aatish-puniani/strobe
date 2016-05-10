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
    @photographer.name = params[:name] unless params[:name].empty?
    @photographer.company = params[:company] unless params[:company].empty?
    @photographer.email = params[:email] unless params[:email].empty?
    @photographer.mobile_number = params[:mobile_number] unless params[:mobile_number].empty?
    @photographer.studio_number = params[:studio_number] unless params[:studio_number].empty?
    @photographer.address = params[:address] unless params[:address].empty?
    @photographer.clients = params[:clients] unless params[:clients].empty?
    @photographer.url = params[:url] unless params[:url].empty?
    @photographer.user_photo = params[:user_photo] unless params[:user_photo].empty?
    @photographer.bio = params[:bio] unless params[:bio].empty?
    @photographer.facebook = params[:facebook] unless params[:facebook].empty?
    @photographer.twitter = params[:twitter] unless params[:twitter].empty?
    @photographer.instagram = params[:instagram] unless params[:instagram].empty?
    @photographer.blog = params[:blog] unless params[:blog].empty?
    @photographer.years_exp = params[:years_exp] unless params[:years_exp].empty?
    @photographer.occupation_id = params[:occupation_id] unless params[:occupation_id].empty?
    @photographer.city_id = params[:city_id] unless params[:city_id].empty?
    # @photographer.update(
    #   name: params[:name],
    #   company: params[:company],
    #   email: params[:email],
    #   mobile_number: params[:mobile_number],
    #   studio_number: params[:studio_number],
    #   address: params[:address],
    #   clients: params[:clients],
    #   url: params[:url],
    #   user_photo: params[:user_photo],
    #   bio: params[:bio],
    #   facebook: params[:facebook],
    #   twitter: params[:twitter],
    #   instagram: params[:instagram],
    #   blog: params[:blog],
    #   years_exp: params[:years_exp],
    #   occupation_id: params[:occupation_id],
    #   city_id: params[:city_id]
    # )
    if @photographer.save
      flash[:success] = "Profile successfully updated!"
      redirect_to "/photographers/#{@photographer.id}"
    else
      redirect_to action: :show
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
