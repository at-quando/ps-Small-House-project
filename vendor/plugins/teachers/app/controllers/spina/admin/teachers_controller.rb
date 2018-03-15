module Spina
  module Admin
    class TeachersController < AdminController

      before_action :set_teacher, only: [:edit, :update, :destroy]

      layout 'spina/admin/admin'

      def index
        @teachers = Teacher.all
      end

      def new
        @teacher = Teacher.new
      end

      def edit
      end

      def create
        @teacher = Teacher.new(teacher_params)

        if @teacher.save
          redirect_to admin_teachers_path, notice: 'teacher was successfully created.'
        else
          render :new
        end
      end

      def update
        if @teacher.update(teacher_params)
          redirect_to admin_teachers_path, notice: 'teacher was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        if @teacher.destroy
          redirect_to admin_teachers_path, notice: 'Teacher was successfully destroyed.'
        end
      end

      private
      def teacher_params
        params.require(:teacher).permit(:avatar, :teaching_technic, :specialize, :salary, :phone, :name, :info, :start_date, :end_date)
      end

      def set_teacher
        @teacher = Teacher.find(params[:id])
      end
    end
  end
end