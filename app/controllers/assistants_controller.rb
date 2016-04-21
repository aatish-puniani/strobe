class AssistantsController < ApplicationController
  def index
    @assistants = Assistant.all
    @occupations = Occupation.all
    @citys = City.all
  end

  def new
    @assistants = Assistant.new
    @occupations = Occupation.all
    @citys = City.all
  end

  def create
    @occupations = Occupation.all
    @citys = City.all
    @assistants = Assistant.create(
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
    redirect_to '/assistants'
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
