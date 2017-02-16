class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    username, password = session_params.values
    @user = User.find_by_credentials(username, password)

    if @user
      login_user!(@user)
      redirect_to cats_url
    else
      redirect_to new_user_url
    end
  end

  def destroy
    @current_user.reset_session_token! if @current_user
    session[:session_token] = nil
    redirect_to new_session_url
  end

  private
  def session_params
    params.require(:user).permit(:username, :password)
  end
end
