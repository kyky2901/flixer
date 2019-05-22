class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_section

  def show
  end

  private

  def require_authorized_for_current_section
    if current_user.enrolled_in?(current_lesson.section.course)
    else 
    redirect_to course_path(current_lesson.section.course), alert: 'You are not enrolled in this course.'
    end 
  end

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
