module SessionsHelper

  # Logs in the given user
  def log_in(user)
    session[:user_id] = user.id
  end
  
  # Returns the current logged in user (if any)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end
  
  # Logs out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  # Returns current user access level
  def current_access_level
    case @current_user.access_level
    when "user"
      return 0
    when "admin"
      return 1
    when "owner"
      return 2
    end
  end
  
end
