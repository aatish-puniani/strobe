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
      description: params[:description],
      location: params[:location],
      day_rate: params[:day_rate],
      category: params[:category],
      clients: params[:clients],
      url: params[:url],
      user_photo: params[:user_photo],
      bio: params[:bio]
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
      company: params[:company] || @job.company,
      # email: params[:email] || @job.email,
      mobile_number: params[:mobile_number] || @job.mobile_number,
      studio_number: params[:studio_number] || @job.studio_number,
      address: params[:address] || @job.address,
      clients: params[:clients] || @job.clients,
      url: params[:url] || @job.url,
      user_photo: params[:user_photo] || @job.user_photo,
      bio: params[:bio] || @job.bio,
      facebook: params[:facebook] || @job.facebook,
      twitter: params[:twitter] || @job.twitter,
      instagram: params[:instagram] || @job.instagram,
      blog: params[:blog] || @job.blog,
      years_exp: params[:years_exp] || @job.years_exp,
      occupation_id: params[:occupation_id] || @job.occupation_id,
      city_id: params[:city_id] || @job.city_id
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
