class ClubsController < ApplicationController
  before_action :authenticate
  def index
    @clubs = current_student.clubs
  end

  def show
    @club = Club.find(params[:id])
    if !@club.students.find_by_id(current_student.id)
     render 'public/403.html', status: 403
   end
  end

  private

  def authenticate
    redirect_to login_path unless current_student
  end

    def current_student
      if session[:student_id]
        @current_student ||= Student.find(session[:student_id])
      end
    end


  end
