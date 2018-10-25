class StudentsController < ApplicationController
  before_action :set_student, only: [:show]

  def index
    @students = Spina::Student.where(favorite: true)
  end

  def show
  end

  private
  def set_student
    @student = Spina::Student.find(params[:id])
  end
end
