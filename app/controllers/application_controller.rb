class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

 def authenticate_admin_user!
  authenticate_user! 
  unless current_user.admin?
    flash[:alert] = "This area is restricted to administrators only."
    redirect_to root_path 
  end
end
 
def current_admin_user
  return nil if user_signed_in? && !current_user.admin?
  current_user
end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def signed_in?
    !!current_user
  end
  helper_method :current_user, :signed_in?

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.nil? ? nil : user.id
  end

end
