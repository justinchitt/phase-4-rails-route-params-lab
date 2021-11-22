class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end
  def show
    student = Student.find(params[:id])
    render json: student
  end
  def query
    if student.find_by_first_name(params[:name])
      render json: student.find_by_first_name(params[:name])
    else
      render json: student.find_by_last_name(params[:name])
    end
  end

end
