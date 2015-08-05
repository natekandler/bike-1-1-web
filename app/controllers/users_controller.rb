class UsersController < ApplicationController
  def index
  end

  def show
    @events = Event.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user

    if @user.update(user_params)
      redirect_to user_path @user
    else
      render "profile/edit"
    end
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to sign_in_path
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit!
    end
end
