class HomeController < ApplicationController
  def index
    @links = [ "background-image: url(https://image.shutterstock.com/z/stock-photo-paint-brushes-and-crafting-supplies-on-the-table-in-a-workshop-760113418.jpg)",
              "background-image: url(https://orig00.deviantart.net/743c/f/2015/106/8/c/paint_wallpaper_by_amdpastrana-d8pvv5p.jpg)",
              "background-image: url(https://img.vimbly.com/images/full_photos/painting-1.jpg)"
            ]
    @text1 = "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
    #data api
    @works = Spina::Photo.where(favorite: true).limit(6)
    students = Spina::Student.where(favorite: true).limit(7)
    @courses = Spina::Course.all.limit(3)
    if students.length > 0 
      @students_list = students[1..7]
      @student_best = students[0]
    else
      @students_list = []
      @student_best = nil
    end
    @article = Spina::Article.find_by(favorite: 1)
    @article2 = Spina::Article.find_by(favorite: 2)
    workshop = Spina::SubCategory.find_by(title: 'workshop')
    if workshop
      @images = workshop.articles.order(created_at: :desc)
    else 
      @images = nil
    end
  end
end
