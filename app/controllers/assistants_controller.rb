class AssistantsController < ApplicationController
  def index
    @photo_assistants = PhotoAssistant.all
    @occupations = Occupation.all
    @citys = City.all
  end

  def new
    @photo_assistants = PhotoAssistant.new
    @occupations = Occupation.all
    @citys = City.all
  end

  def create
    @occupations = Occupation.all
    @citys = City.all
    @photo_assistants = PhotoAssistant.create(
      name: params[:name],
      company: params[:company],
      email: params[:email],
      phone_number: params[:phone_number],
      address: params[:address],
      day_rate: params[:day_rate],
      worked_with: params[:worked_with],
      url: params[:url],
      bio: params[:bio],
      facebook: params[:facebook],
      twitter: params[:twitter],
      instagram: params[:instagram],
      blog: params[:blog],
      years_exp: params[:years_exp],
      car: params[:car],
      occupation_id: params[:occupation_id],
      city_id: params[:city_id]
    )
    redirect_to '/photo_assistants'
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
