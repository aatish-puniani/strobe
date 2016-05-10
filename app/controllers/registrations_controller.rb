class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    if (params[:role] == "assistant")
      assistant = Assistant.create(email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
      if (assistant.save)
        sign_in(:assistant, assistant)
        redirect_to "/assistants/#{assistant.id}/edit"
      else
        super
      end
    else
      photographer = Photographer.create(email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
      if (photographer.save)
        sign_in(:photographer, photographer)
        redirect_to "/photographers/#{photographer.id}/edit"
      else
        super
      end
    end
  end

  def update
    super
  end
end