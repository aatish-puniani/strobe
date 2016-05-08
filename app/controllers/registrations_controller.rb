class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    if (params[:role] == "assistant")
      Assistant.create(email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    else
      photographer = Photographer.create(email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
      if (photographer.save)
        redirect_to "/photographers/#{photographer.id}/edit"
      end
    end
  end

  def update
    super
  end
end