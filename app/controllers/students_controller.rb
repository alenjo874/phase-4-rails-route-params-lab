class StudentsController < ApplicationController

  def index
    students = Student.find_by(first_name: params[:first], last_name: params[:last])
    render json: students
  end

  def show
    show_student = Student.find(params[:id])
    render json: show_student
  end

end
