class Api::V1::OccupationsController < ApplicationController

  def index
    render json: Occupation.all
  end
end
