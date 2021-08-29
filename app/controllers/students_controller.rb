class StudentsController < ApplicationController

  def index
    if params[:name] 
      students = Student.where(last_name: params[:name]).or(Student.where(first_name: params[:name]))
    else
      students = Student.all
    end
    render json: students
  end

  def by_id
    student = Student.find(params[:id])
    render json: student
  end

end
