class AssistantsController < ApplicationController
  def index
    @assistants = Assistant.all
    @occupations = Occupation.all
    @categories = Category.all
    @cities = City.all
    @skills = Skill.all

    if params[:city]
      @assistants = City.find_by(name: params[:city]).assistants
    end

    if params[:occupation]
      @assistants = Occupation.find_by(name: params[:occupation]).assistants
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
    assistant_id = params[:id]
    @assistant = Assistant.find_by(id: assistant_id)
    current_assistant.update(params.permit(:avatar))
    redirect_to "/assistants/#{@assistant.id}/edit"
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

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = ENV['TWILIO_API_ID']
    twilio_token = ENV['TWILIO_API_TOKEN']
    twilio_phone_number = "3128185607"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => '+13128185607',
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
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