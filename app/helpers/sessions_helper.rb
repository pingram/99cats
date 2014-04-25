module SessionsHelper
  def current_user
    return nil if session[:session_token].nil?
    user_session = Session.find_by_token(session[:session_token])
    @current_user ||= User.find(user_session.user_id)
  end

  def current_user=(user)
    @current_user = user
    session[:session_token] = user.generate_session_token
  end

  def login_user!(user)
    self.current_user = user
    user.cleanup_sessions
  end

end