class Api::V1::SkillsController < ApplicationController
  def index
    render json: Skill.all
  end
end

