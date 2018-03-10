module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: params[:user_id])
  end

  def logged_in?
    !!current_user
  end
end