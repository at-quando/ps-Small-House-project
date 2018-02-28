class AlbumsController < ApplicationController
  def index
    @works = Spina::Photo.where.not("student_id = ? or teacher_id = ?", nil, nil)
  end
end
