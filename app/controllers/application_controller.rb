class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  before_action :assistant_signed_in?

  def assistant_signed_in?
    if current_assistant
      @signed_in_assistant = Assistant.find(current_assistant.id)
    end
  end

  before_action :photographer_signed_in?

  def photographer_signed_in?
    if current_photographer
      @signed_in_photographer = Photographer.find(current_photographer.id)
    end
  end
end
