module Spina
  module Admin
    class ArticlesController < AdminController

      before_action :set_breadcrumb
      before_action :set_article, only: [:edit, :update, :destroy]

      layout 'spina/admin/admin'

      def index
        @articles = Article.all
      end

      def new
        @article = Article.new
      end

      def edit
      end

      def create
        @article = Article.new(article_params)
        @article.content.gsub('&nbsp;','')
        if @article.save
          redirect_to admin_articles_path, notice: 'Article was successfully created.'
        else
          render :new
        end
      end

      def update
        if @article.update(article_params)
          redirect_to admin_articles_path, notice: 'Article was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        if @article.destroy
          redirect_to admin_articles_path, notice: 'Article was successfully destroyed.'
        end
      end

      private

      def article_params
        params.require(:article).permit(:title, :description, :content, :date)
      end

      def set_breadcrumb
        add_breadcrumb 'Articles', admin_articles_path
      end

      def set_article
        @article = Article.find(params[:id])
        add_breadcrumb @article.title
      end

    end
  end
end