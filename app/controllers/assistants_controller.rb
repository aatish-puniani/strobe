class AssistantsController < ApplicationController
  def index
    @assistants = Assistant.all
    @occupations = Occupation.all
    @citys = City.all
  end

  def show
    assistant_id = params[:id]
    @assistant = Assistant.find_by(id: assistant_id)
  end

  def edit
    assistant_id = params[:id]
    @assistant = Assistant.find_by(id: assistant_id)
  end

  def update
    assistant_id = params[:id]
    @assistant = Assistant.find_by(id: assistant_id)
    @assistant.name = params[:name] unless params[:name].empty?
    @assistant.company = params[:company] unless params[:company].empty?
    @assistant.email = params[:email] unless params[:email].empty?
    @assistant.phone_number = params[:phone_number] unless params[:phone_number].empty?
    @assistant.address = params[:address] unless params[:address].empty?
    @assistant.day_rate = params[:day_rate] unless params[:day_rate].empty?
    @assistant.worked_with = params[:worked_with] unless params[:worked_with].empty?
    @assistant.url = params[:url] unless params[:url].empty?
    @assistant.bio = params[:bio] unless params[:bio].empty?
    @assistant.facebook = params[:facebook] unless params[:facebook].empty?
    @assistant.twitter = params[:twitter] unless params[:twitter].empty?
    @assistant.instagram = params[:instagram] unless params[:instagram].empty?
    @assistant.blog = params[:blog] unless params[:blog].empty?
    @assistant.years_exp = params[:years_exp] unless params[:years_exp].empty?
    @assistant.car = params[:car] unless params[:car].empty?
    @assistant.occupation_id = params[:occupation_id] unless params[:occupation_id].empty?
    @assistant.city_id = params[:city_id] unless params[:city_id].empty?
    # if @assistant.update(
    #   name: params[:name],
    #   company: params[:company],
    #   email: params[:email],
    #   phone_number: params[:phone_number],
    #   address: params[:address],
    #   day_rate: params[:day_rate],
    #   worked_with: params[:worked_with],
    #   url: params[:url],
    #   bio: params[:bio],
    #   facebook: params[:facebook],
    #   twitter: params[:twitter],
    #   instagram: params[:instagram],
    #   blog: params[:blog],
    #   years_exp: params[:years_exp],
    #   car: params[:car],
    #   occupation_id: params[:occupation_id],
    #   city_id: params[:city_id]
    # )
    if @assistant.save
      flash[:success] = "Profile successfully updated!"
      redirect_to "/assistants/#{@assistant.id}"
    else
      redirect_to action: :show
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