class PhotographersController < ApplicationController
  def index
    @photographers = Photographer.all
    @occupations = Occupation.all
    @cities = City.all
  end

  def show
    photographer_id = params[:id]
    @photographer = Photographer.find_by(id: photographer_id)
    @occupations = Occupation.all
    @cities = City.all
  end

  def edit
    photographer_id = params[:id]
    @photographer = Photographer.find_by(id: photographer_id)
    @occupations = Occupation.all
    @cities = City.all
  end

def avatar_update
    
    current_photographer.update(params.permit(:avatar))
    
  end
  

  def update
    photographer_id = params[:id]
    @photographer = Photographer.find_by(id: photographer_id)
    @occupations = Occupation.all
    @cities = City.all
    if @photographer.update(
      name: params[:name] || @photographer.name,
      company: params[:company] || @photographer.company,
      # email: params[:email] || @photographer.email,
      mobile_number: params[:mobile_number] || @photographer.mobile_number,
      studio_number: params[:studio_number] || @photographer.studio_number,
      address: params[:address] || @photographer.address,
      clients: params[:clients] || @photographer.clients,
      url: params[:url] || @photographer.url,
      # user_photo: params[:user_photo] || @photographer.user_photo,
      bio: params[:bio] || @photographer.bio,
      facebook: params[:facebook] || @photographer.facebook,
      twitter: params[:twitter] || @photographer.twitter,
      instagram: params[:instagram] || @photographer.instagram,
      blog: params[:blog] || @photographer.blog,
      years_exp: params[:years_exp] || @photographer.years_exp,
      occupation_id: params[:occupation_id] || @photographer.occupation_id,
      city_id: params[:city_id] || @photographer.city_id
    )
      flash[:success] = "Profile successfully updated!"
      redirect_to "/photographers/#{@photographer.id}"
    else
      p @photographer.errors.full_messages
      redirect_to action: :edit
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

private

def set_photographer
  @photographer = Photographer.find(params[:id])
end

def photographer_params
  params.require(:photographer).permit(:name, :company, :mobile_number, :studio_number, :address, :clients, :url, :bio, :facebook, :twitter, :instagram, :blog, :years_exp, :occupation_id, :city_id, :avatar)
end
