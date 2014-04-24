class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_credentials(user_params[:user_name], user_params[:password])

    if user.nil?
      flash.now[:error] = "Username and/or password is incorrect"
      render :new
    else
      current_user = user
      user.reset_session_token!
      redirect_to cats_url
    end
  end

  def destroy
    user = User.find(parmas[:id])
    session[:session_token] = nil
    user.reset_session_token!
  end


  private

  def user_params
    params.require(:user).permit(:user_name, :password)
  end
end
