module Spina
  module Admin
    class MoneyController < AdminController
      before_action :set_student, only: [:minus_dept, :plus_dept]

      def new
        @money = Mone.new
      end

      def index
        @late_students = Student.where("dept > ?", 0)
        check_students = Student.where("dept = ?", 0)
        @soon_students = []
        check_students.each do |check|
          if check.receive_day + 1.month - Time.now < 604800
            @soon_students.push(check)
          end
        end 
        @over_students = Student.where("dept < ?", 0)
      end

      def index_fee
        @list_mone = []
        @mone = Mone.select("COUNT(student_id) as counter, student_id, code_course, spina_mones.payment_date, spina_students.name, spina_students.phone, GROUP_CONCAT(spina_mones.id) AS mone_ids").where("title = 1 and spina_mones.created_at > ?", Time.now - 3.days).joins(:student).group("student_id, code_course, CAST(spina_mones.payment_date AS DATE), spina_students.name, spina_students.phone")
        @mone.each_with_index do |mo, index|
          mo.mone_ids.split(',').each do |id|
            money = Mone.find(id)
            if !@list_mone[index]
              @list_mone[index] = []
            end 
            @list_mone[index].push(money)
          end
        end
      end

      def index_back_fee
        @list_mone = []
        @mone = Mone.select("COUNT(student_id) as counter, student_id, code_course, spina_mones.payment_date, spina_students.name, spina_students.phone, GROUP_CONCAT(spina_mones.id) AS mone_ids").where("title = 0 and spina_mones.created_at > ?", Time.now - 3.days).joins(:student).group("student_id, code_course, CAST(spina_mones.payment_date AS DATE), spina_students.name, spina_students.phone")
        @mone.each_with_index do |mo, index|
          mo.mone_ids.split(',').each do |id|
            money = Mone.find(id)
            if !@list_mone[index]
              @list_mone[index] = []
            end 
            @list_mone[index].push(money)
          end
        end
      end

      def minus_dept
        if @student.course
          mess = 'Thanh toán học phí ' + @student.receive_day.strftime("%d-%m") + ' đến ' + (@student.receive_day + 1.month).strftime("%d-%m") +
          ' Tiền học: ' + @student.course.course_fee.to_s
          @money = Mone.new(title: 1,
            description: mess,
            payment_date: Time.now,
            receive_day: @student.receive_day + 1.month,
            student_id: @student.id,
            code_course: @student.course.code
          )
          if @money.save()
            @mone.update_attribute(:title, 2) if @mone
            if @student.update_attribute(:receive_day, @student.receive_day + 1.month)
              @student.decrement!(:dept)
              redirect_to admin_money_index_path, notice: 'Thanh toán học phí thành công.'
            end
          end
        end
      end

      def plus_dept
        if @student.course
          mess = 'Tính phí lại ' + @student.receive_day.strftime("%d-%m") + ' đến ' + (@student.receive_day + 1.month).strftime("%d-%m") +
          ' Tiền học: ' + @student.course.course_fee.to_s
          @money = Mone.new(title: 0, 
            description: mess,
            payment_date: Time.now, 
            receive_day: @student.receive_day - 1.month,
            student_id: @student.id,
            code_course: @student.course.code
          )
          if @money.save()
            @mone.update_attribute(:title, 2) if @mone
            if @student.update_attribute(:receive_day, @student.receive_day - 1.month)
              @student.increment!(:dept)
              redirect_to admin_money_index_path, notice: 'Tính phí lại thành công.'
            end
          end
        end
      end

      private
      def note_params
        # params.require(:photo).permit(:student_id, :teacher_id, :description, :age, :title)
      end

      def set_student
        @student = Student.find(params[:id])
        if params[:minus_id]
          @mone = Mone.find(params[:minus_id])
        end
      end
    end
  end
end