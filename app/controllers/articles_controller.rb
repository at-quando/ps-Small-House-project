class ArticlesController < ApplicationController
  def show
    @article = Spina::Article.find(params[:id])
  end
end
