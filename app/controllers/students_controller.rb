class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
  end

  def create
    Student.create(name: params[:name])

    redirect_to students_path
  end
end
