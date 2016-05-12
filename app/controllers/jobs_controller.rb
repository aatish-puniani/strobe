class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @occupations = Occupation.all
    @cities = City.all
  end

  def new
    @job = Job.new
    @occupations = Occupation.all
    @cities = City.all
  end

  def create
    @occupations = Occupation.all
    @cities = City.all
    @job = Job.new(
      name: params[:name],
      photographer_id: params[:photographer_id],
      description: params[:description],
      city: params[:city],
      location: params[:location],
      day_rate: params[:day_rate],
      category: params[:category],
      occupation: params[:occupation],
      skill: params[:skill],
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
  end

  def edit
    job_id = params[:id]
    @job = Job.find_by(id: job_id)
    @occupations = Occupation.all
    @cities = City.all
  end

  def update
    job_id = params[:id]
    @job = Job.find_by(id: job_id)
    @occupations = Occupation.all
    @cities = City.all
    if @job.update(
      name: params[:name] || @job.name,
      photographer_id: params[:photographer_id] || @job.photographer_id,
      description: params[:description] || @job.description,
      city: params[:city] || @job.city,
      location: params[:location] || @job.location,
      day_rate: params[:day_rate] || @job.day_rate,
      category: params[:category] || @job.category,
      occupation: params[:occupation] || @job.occupation,
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
