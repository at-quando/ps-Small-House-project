module Spina
  module Admin
    class CategoriesController < AdminController

      before_action :set_breadcrumb
      before_action :set_category, only: [:edit, :update, :destroy]

      layout 'spina/admin/admin'

      def index
        @categories = Category.all
      end

      def new
        @category = Category.new
      end

      def edit
      end

      def create
        @category = Category.new(category_params)
        if @category.save
          redirect_to admin_categories_path, notice: 'category was successfully created.'
        else
          render :new
        end
      end

      def update
        if @category.update(category_params)
          redirect_to admin_categories_path, notice: 'category was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        if @category.destroy
          redirect_to admin_categories_path, notice: 'category was successfully destroyed.'
        end
      end

      private
      def category_params
        params.require(:category).permit(:title, :urlTitle)
      end

      def set_breadcrumb
        add_breadcrumb 'categories', admin_categories_path
      end

      def set_category
        @category = Category.find(params[:id])
        add_breadcrumb @category.title
      end

    end
  end
end