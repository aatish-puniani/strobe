class AssistantsController < ApplicationController
  def index
    @assistants = Assistant.all
    @occupations = Occupation.all
    @categories = Category.all
    @cities = City.all
    @skills = Skill.all

    if params[:city]
      @city = City.find(params[:city])
    end

    if params[:occupation]
      @occupation = Occupation.find(params[:occupation])
    end
  end

  def show
    assistant_id = params[:id]
    @assistant = Assistant.find_by(id: assistant_id)
    @occupations = Occupation.all
    @categories = Category.all
    @cities = City.all
    @skills = Skill.all
  end

  def edit
    assistant_id = params[:id]
    @assistant = Assistant.find_by(id: assistant_id)
    @occupations = Occupation.all
    @categories = Category.all
    @cities = City.all
    @skills = Skill.all
  end

  def avatar_update
    current_assistant.update(params.permit(:avatar)) 
  end

  def update
    assistant_id = params[:id]
    @assistant = Assistant.find_by(id: assistant_id)
    @occupations = Occupation.all
    @cities = City.all
    @skills = Skill.all
    @categories = Category.all
    if @assistant.update(
      name: params[:name] || @assistant.name,
      # company: params[:company] || @assistant.company,
      # email: params[:email] || @assistant.email,
      phone_number: params[:phone_number] || @assistant.phone_number,
      address: params[:address] || @assistant.address,
      day_rate: params[:day_rate] || @assistant.day_rate,
      worked_with: params[:worked_with] || @assistant.worked_with,
      url: params[:url] || @assistant.url,
      bio: params[:bio] || @assistant.bio,
      facebook: params[:facebook] || @assistant.facebook,
      twitter: params[:twitter] || @assistant.twitter,
      instagram: params[:instagram] || @assistant.instagram,
      blog: params[:blog] || @assistant.blog,
      years_exp: params[:years_exp] || @assistant.years_exp,
      occupation_id: params[:occupation_id] || @assistant.occupation_id,
      car: params[:car] || @assistant.car,
      city_id: params[:city_id] || @assistant.city_id
    )
      flash[:success] = "Profile successfully updated!"
      redirect_to "/assistants/#{@assistant.id}"
    else
      p @assistant.errors.full_messages
      redirect_to action: :edit
    end
  end

  def destroy
    assistant_id = params[:id]
    @assistant = Assistant.find_by(id: assistant_id)
    @assistant.destroy
    flash[:danger] = "Account successfully deleted!"
    redirect_to "/assistants"
  end
end

private

def set_assistant
  @assistant = Assistant.find(params[:id])
end

def assistant_params
  params.require(:assistant).permit(:name, :phone_number, :address, :day_rate, :worked_with, :url, :bio, :facebook, :twitter, :instagram, :blog, :years_exp, :occupation_id, :car, :city_id, :avatar)
end