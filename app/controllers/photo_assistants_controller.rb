class PhotoAssistantsController < ApplicationController
  def index
    @photo_assistants = PhotoAssistant.all
  end
end