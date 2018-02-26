class HomeController < ApplicationController
  def index
    @links = [ "background-image: url(https://img.grouponcdn.com/deal/tL4pe27FCbqAiRwyxupM/v9-700x420/v1/c700x420.jpg)",
              "background-image: url(https://img.grouponcdn.com/deal/3J8Ms9MccVVv4Bxx7TZf/ER-700x420/v1/c700x420.jpg)",
              "background-image: url(https://img.vimbly.com/images/full_photos/painting-1.jpg)"
            ]
    @text1 = "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
    #data api
    @works = Spina::Photo.where(favorite: true).limit(6)
    students = Spina::Student.where(favorite: true).limit(7)
    if students.length > 0 
      @students_list = students[1..7]
      @student_best = students[0]
    else
      @students_list = []
      @student_best = nil
    end
  end
end
