class LoginController < ApplicationController
  def user_login
  end
  def admin_login
  end

  def create
    if @user.login
      Inform.send_when_admin_reply(@user).deliver
      redirect_to @user
    else
      render 'new'
    end
  end
end
