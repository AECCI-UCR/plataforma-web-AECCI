class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin, except: :index
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
    @years_of_courses = @courses.order(:initials).group_by(&:year)
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    flash.now[:notice] = 'Curso creado correctamente' if @course.save
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
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
