class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      flash[:alert] = "エラーが発生しました。#{@user.errors.full_messages}"
      render 'new'
    end
  end
  private

  def index
    params.require(:user).permit(:name, :email)
  end
  def user_list
    @user = User.all
  end
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_url
  end
end
