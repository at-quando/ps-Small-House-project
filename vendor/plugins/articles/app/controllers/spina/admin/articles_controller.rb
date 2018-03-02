module Spina
  module Admin
    class ArticlesController < AdminController

      before_action :set_breadcrumb
      before_action :set_article, only: [:edit, :update, :destroy, :favorite_article_workshop, :favorite_article_slider, :delete_favorite_article]

      layout 'spina/admin/admin'

      def index
        @articles = Article.where("favorite NOT IN (?)", [2,3])
        @articlesSlide = Article.where(favorite: 3)
        @articlesWorkshop = Article.where(favorite: 2)
      end

      def new
        @article = Article.new
        @sub_categories = SubCategory.all.try(:map) {|x| [x.title, x.id]}.unshift(['không có', nil])
      end

      def edit
        @sub_categories = SubCategory.all.try(:map) {|x| [x.title, x.id]}.unshift(['không có', nil])
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

      def favorite_article_workshop
        if @article.update_attribute(:favorite, 2)
          redirect_to admin_articles_path, notice: 'article was successfully updated.'
        end
      end

      def favorite_article_slider
        if @article.update_attribute(:favorite, 3)
          redirect_to admin_articles_path, notice: 'article was successfully updated.'
        end
      end

      def delete_favorite_article
        if @article.update_attribute(:favorite, 0)
          redirect_to admin_articles_path, notice: 'student was successfully updated.'
        else
          render :edit
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
        params.require(:article).permit(:title, :description, :cover, :sub_category_id, :content, :date)
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