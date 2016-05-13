class StrobesController < ApplicationController
  def home
    @photographers = Photographer.all
    @assistants = Assistant.all
  end
end
