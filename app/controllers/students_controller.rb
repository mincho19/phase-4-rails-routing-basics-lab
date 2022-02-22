class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        grades = Student.order(:grade)
        render json: grades
    end

    def highest_grade
        render json: Student.order(:grade).last
    end

end
