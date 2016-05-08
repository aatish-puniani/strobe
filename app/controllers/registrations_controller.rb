class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    if(params[:role] == "assistant")
      Assistant.create(email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    else
      Photographer.create(email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    end
    redirect_to "/"
  end

  def update
    super
  end
end