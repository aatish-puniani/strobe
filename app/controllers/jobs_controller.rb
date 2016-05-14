class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @occupations = Occupation.all
    @cities = City.all
    @categories = Category.all
  end

  def new
    @job = Job.new
    @occupations = Occupation.all
    @cities = City.all
    @categories = Category.all
  end

  def create
    @occupations = Occupation.all
    @cities = City.all
    @categories = Category.all
    @job = Job.new(
      name: params[:name],
      description: params[:description],
      city_id: params[:city_id],
      location: params[:location],
      day_rate: params[:day_rate],
      category_id: params[:category_id],
      occupation_id: params[:occupation_id],
      skill_id: params[:skill_id],
      call_time: params[:call_time],
      date: params[:date],
      call_sheet: params[:call_sheet]
    )
    if @job.save
      flash[:success] = "Job successfully created!"
      redirect_to "/jobs/#{@job.id}"
    else
      p @job.errors.full_messages
      render "new.html.erb"
    end
  end

  def show
    job_id = params[:id]
    @job = Job.find_by(id: job_id)
    @occupations = Occupation.all
    @cities = City.all
    @categories = Category.all
  end

  def edit
    job_id = params[:id]
    @job = Job.find_by(id: job_id)
    @occupations = Occupation.all
    @cities = City.all
    @categories = Category.all
  end

  def update
    job_id = params[:id]
    @job = Job.find_by(id: job_id)
    @occupations = Occupation.all
    @cities = City.all
    @categories = Category.all
    if @job.update(
      name: params[:name] || @job.name,
      photographer_id: params[:photographer_id] || @job.photographer_id,
      description: params[:description] || @job.description,
      city_id: params[:city_id] || @job.city_id,
      location: params[:location] || @job.location,
      day_rate: params[:day_rate] || @job.day_rate,
      category_id: params[:category_id] || @job.category_id,
      occupation_id: params[:occupation_id] || @job.occupation_id,
      skill: params[:skill] || @job.skill,
      call_time: params[:call_time] || @job.call_time,
      date: params[:date] || @job.date,
      call_sheet: params[:call_sheet] || @job.call_sheet
    )
      flash[:success] = "Profile successfully updated!"
      redirect_to "/jobs/#{@job.id}"
    else
      p @job.errors.full_messages
      redirect_to action: :edit
    end
  end

  def destroy
    job_id = params[:id]
    @job = Job.find_by(id: job_id)
    @job.destroy
    flash[:danger] = "Account successfully deleted!"
    redirect_to "/jobs"
  end
end
