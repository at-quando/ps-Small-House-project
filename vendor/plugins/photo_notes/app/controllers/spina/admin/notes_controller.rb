module Spina
  module Admin
    class NotesController < AdminController

      before_action :set_note, only: [:edit, :update, :favorite_photo, :destroy, :delete_favorite_photo]

      layout 'spina/admin/admin'

      def index
        @notes = Photo.all.order(created_at: :desc)
        @favor_notes = Photo.where(favorite: true)
      end

      def new
        @note = Photo.new
        url    = 'http://www.foo.com?id=4&empid=6'
        uri    = URI.parse(url)
        params = CGI.parse(uri.query)
        id     = params['id'].first
      end

      def edit
        @teachers = Teacher.all.map{|x| [x.name, x.id]}.unshift(['không có', nil])
        uri   = URI.parse(request.fullpath)
        if uri.query
          params = CGI.parse(uri.query)
          content   = params['search_content'].first
          @students = Student.where("phone LIKE ? OR name LIKE ?" , "%#{content}%", "%#{content}%").map{|x| [x.name, x.id]}.unshift(['không có', nil])
        else
          @students = Student.all.map{|x| [x.name, x.id]}.unshift(['không có', nil])
        end
      end

      def create
        @note = Photo.new(note_params)
        if @note.save
          redirect_to admin_notes_path, notice: 'note was successfully created.'
        else
          render :new
        end
      end

      def update
        if @note.update(note_params)
          redirect_to admin_notes_path, notice: 'note was successfully updated.'
        else
          @teachers = Teacher.all.map{|x| [x.name, x.id]}.unshift(['không có', nil])
          @students = Student.all.map{|x| [x.name, x.id]}.unshift(['không có', nil])
          render :edit
        end
      end

      def destroy
        if @note.destroy
          redirect_to admin_notes_path, notice: 'note was successfully destroyed.'
        end
      end

      def favorite_photo
        if @note.update_attribute(:favorite, true)
          redirect_to admin_notes_path, notice: 'note was successfully updated.'
        else
          render :edit
        end
      end

      def delete_favorite_photo
        if @note.update_attribute(:favorite, false)
          redirect_to admin_notes_path, notice: 'note was successfully updated.'
        else
          render :edit
        end
      end

      private

      def note_params
        params.require(:photo).permit(:student_id, :teacher_id, :description, :age, :title)
      end

      def set_note
        @note = Photo.find(params[:id])
      end
    end
  end
end