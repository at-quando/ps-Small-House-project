module Spina
  module Admin
    class CoursesController < AdminController

      before_action :set_course, only: [:show, :edit, :update, :destroy]

      layout 'spina/admin/admin'

      def index
        @courses = Course.all
      end

      def new
        @course = Course.new
      end

      def edit
      end

      def create
        @courses = Course.new(course_params)
        if @courses.save
          redirect_to admin_courses_path, notice: 'student was successfully created.'
        else
          render :new
        end
      end

      def show
        @students = @course.students
      end

      def update
        if @course.update(course_params)
          redirect_to admin_courses_path, notice: 'student was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        if @course.destroy
          redirect_to admin_courses_path, notice: 'Student was successfully destroyed.'
        end
      end


      private
      def course_params
        params.require(:course).permit(:level, :code, :name, :duration_min, :duration_max, :learning_days, :learning_hours, :course_fee, :note)
      end

      def set_course
        @course = Course.find(params[:id])
      end
    end
  end
end