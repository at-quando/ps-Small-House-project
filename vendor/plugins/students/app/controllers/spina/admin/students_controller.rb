module Spina
  module Admin
    class StudentsController < AdminController

      before_action :set_student, only: [:edit, :show, :update, :destroy, :favorite_student, :delete_favorite_student]

      layout 'spina/admin/admin'

      def index
        @students = Student.all
        @favor_students = Student.where(favorite: true)
      end

      def new
        @student = Student.new
        if request.query_parameters['code']
          @code = request.query_parameters['code']
          @id = request.query_parameters['course_id']
        else
          @courses = Course.all.try(:map) {|x| [x.name + ' (' +x.code + ')', x.id]}.unshift(['không có', nil])
        end
      end

      def show
        
      end

      def edit
        @courses = Course.all.try(:map) {|x| [x.name + ' (' +x.code + ')', x.id]}.unshift(['không có', nil])
      end

      def create
        @student = Student.new(student_params)
        @student.receive_day = @student.start_date
        @student.dept = params[:student][:dept].to_i + 1
        if @student.save
          if @student.course_id
            redirect_to admin_course_path(@student.course_id), notice: 'student was successfully created.'
          else
            redirect_to admin_students_path, notice: 'student was successfully created.'
          end
        else
          render :new
        end
      end

      def search
        content = params["search_content"]
        @students = Student.where("phone LIKE ? OR name LIKE ?" , "%#{content}%", "%#{content}%")
      end

      def update
        @student.receive_day = student_params["start_date"]
        @student.dept = @student.dept + params[:student][:dept].to_i
        if @student.update(student_params)
          redirect_to admin_students_path, notice: 'student was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        if @student.destroy
          redirect_to admin_students_path, notice: 'Student was successfully destroyed.'
        end
      end

      def favorite_student
        if @student.update_attribute(:favorite, true)
          redirect_to admin_students_path, notice: 'student was successfully updated.'
        else
          render :edit
        end
      end

      def delete_favorite_student
        if @student.update_attribute(:favorite, false)
          redirect_to admin_students_path, notice: 'student was successfully updated.'
        else
          render :edit
        end
      end

      private
      def student_params
        params.require(:student).permit(:name, :course_id, :description, :start_date, :phone, :home, :parent, :review, :end_date, :avatar)
      end

      def set_student
        @student = Student.find(params[:id])
      end
    end
  end
end