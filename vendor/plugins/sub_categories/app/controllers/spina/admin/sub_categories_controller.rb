module Spina
  module Admin
    class SubCategoriesController < AdminController

      before_action :set_breadcrumb
      before_action :set_sub_category, only: [:edit, :update, :destroy]

      layout 'spina/admin/admin'

      def index
        @sub_categories = SubCategory.all
      end

      def new
        @categories = Category.all
        @sub_category = SubCategory.new
      end

      def edit
      end

      def create
        @sub_category = SubCategory.new(sub_category_params)
        if @sub_category.save
          redirect_to admin_sub_categories_path, notice: 'sub_category was successfully created.'
        else
          @categories = Category.all
          render :new
        end
      end

      def update
        if @sub_category.update(sub_category_params)
          redirect_to admin_sub_categories_path, notice: 'sub_category was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        if @sub_category.destroy
          redirect_to admin_sub_categories_path, notice: 'sub_category was successfully destroyed.'
        end
      end

      private

      def sub_category_params
        params.require(:sub_category).permit(:title, :urlTitle, :category_id)
      end

      def set_breadcrumb
        add_breadcrumb 'sub_categories', admin_sub_categories_path
      end

      def set_sub_category
        @sub_category = SubCategory.find(params[:id])
        @categories = Category.all
        add_breadcrumb @sub_category.title
      end

    end
  end
end