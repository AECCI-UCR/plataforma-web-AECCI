class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin, except: :index

  def index
    @courses = Course.all
    @years_of_courses = @courses.order(:initials).group_by(&:year)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    flash.now[:notice] = 'Curso creado correctamente' if @course.save
  end


  private
# Use callbacks to share common setup or constraints between actions.
  def set_course
    @course = Course.find(params[:id])
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def course_params
    params.require(:course).permit(:name, :initials, :year)
  end

end
