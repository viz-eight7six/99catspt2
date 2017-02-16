class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :check_if_logged_in

  def check_if_logged_in
    if current_user &&
      (self.env["PATH_INFO"] == '/session/new' ||
        self.env["PATH_INFO"] == '/users/new')
        redirect_to cats_url
    end
  end

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def login_user!(user)
    session[:session_token] = user.session_token
  end


end
