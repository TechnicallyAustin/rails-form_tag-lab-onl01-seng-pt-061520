
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    #@student = Student.create(:first_name params(student[:first_name], :last_name params(student[:last_name]))
    #redirect_to new_student_path(@student)
  end

  def create
   # use nested hashes here to grab the parameters created from the new form 
   # student[;first_name] and student[:last_name]

   # create a new student object and redierct to the students#index
   @student = Student.create(first_name: params[:first_name], last_name: params[:last_name] )
   
   redirect_to students_path(@student)
  end



end
