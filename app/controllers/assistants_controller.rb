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
    if @assistant.update(
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
      flash[:success] = "Profile successfully updated!"
      redirect_to "/assistants/#{@assistant.id}"
    else
      render "edit.html.erb"
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