class CoursesController < ApplicationController
  #student controller
  def index
    @courses = Course.all
  end
end
