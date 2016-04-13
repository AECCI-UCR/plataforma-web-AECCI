class TestsController < ApplicationController
  before_filter :authenticate_user!
  before_action :require_admin
  before_action :fill_data, only: [:edit, :new, :create, :update]
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  def index
    @tests = Test.by_courses_and_teachers
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to tests_url, notice: 'El examen se agregó correctamente.'
    else
      render :new
    end
  end

  def update
    if @test.update(test_params)
      redirect_to tests_url, notice: 'El examen se actualizó correctamente.'
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to tests_url, notice: 'El examen se eliminó correctamente.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_test
    @test = Test.find(params[:id])
  end

  def fill_data
    @test = Test.new
    @teachers = Teacher.all.select(:id, :name)
    @courses = Course.all.select(:id, :name)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def test_params
    params.require(:test).permit(:year, :teacher_id, :semester, :test_number, :file_url, :course_id)
  end
end
