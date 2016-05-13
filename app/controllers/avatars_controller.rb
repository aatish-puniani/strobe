class AvatarsController < ApplicationController
  def new
    @avatar = Avatar.new
  end

  def create
    @avatar = Avatar.new(
      avatar: params[:avatar]
    )
    if @avatar.save
      flash[:success] = "Avatar successfully added!"
      redirect_to "/avatars/#{@avatar.id}"
    else
      p @avatar.errors.full_messages
      render "new.html.erb"
    end
  end

  def show
    avatar_id = params[:id]
    @avatar = Avatar.find_by(id: avatar_id)
  end

  def edit
    avatar_id = params[:id]
    @avatar = Avatar.find_by(id: avatar_id)
  end

  def update
    avatar_id = params[:id]
    @avatar = Avatar.find_by(id: avatar_id)
    @avatar.update(
      avatar: params[:avatar]
    )
    if @avatar.save
      flash[:success] = "Avatar successfully updated!"
      redirect_to "/avatars/#{@avatar.id}"
    else
      redirect_to action: :edit
    end
  end
end
