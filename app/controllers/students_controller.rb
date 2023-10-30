class StudentsController < ApplicationController

    def index
        students = Student.all

        render json: students
    end

    def grades

        students_sorted = Student.order("grade DESC")

        render json: students_sorted

    end

    def highest_grade
        best_student = Student.order("grade DESC").first

        render json: best_student
    end

end
