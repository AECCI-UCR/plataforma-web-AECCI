class TeachersController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin, except: :course_teachers

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    flash.now[:notice] = 'Nuevo profesor creado correctamente' if @teacher.save
  end

  def course_teachers
    @course = Course.find(params[:id])
    @tests = @course.tests.select(:id, :teacher_id, :course_id, :year, :file_url, :semester, :test_number).order(year: :desc, semester: :desc, test_number: :asc).group_by { |test| test.teacher.name }
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def teacher_params
    params.require(:teacher).permit(:name)
  end
end
