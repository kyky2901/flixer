class CoursesController < ApplicationController
  #student controller
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end
end
