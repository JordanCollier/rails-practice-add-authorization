class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_student
    Student.find_by_id(session[:student_id])
  end

  def authenticate
    redirect_to login_path, :notice => 'You must be logged in to visit that page.' unless current_student
  end

  helper_method :current_student

end
