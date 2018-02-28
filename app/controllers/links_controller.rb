class LinksController < ApplicationController
  def about_house
    name = params[:name]
    list = Spina::SubCategory.find_by(:urlTitle => name)
    if !list
      list = Spina::Category.find_by(:urlTitle => name)
    end 
    articles = list.articles
    if articles.length == 1
      @article =  articles[0]
      @related_articles = Spina::Article.all.limit(5)
    else
      @articles = articles
      @list = list
    end
  end
end
