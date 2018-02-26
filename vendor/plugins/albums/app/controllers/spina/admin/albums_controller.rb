module Spina
  module Admin
    class AlbumsController < AdminController

      before_action :set_breadcrumb
      before_action :set_album, only: [:edit, :update, :destroy]

      layout 'spina/admin/admin'

      def index
        @albums = album.all
      end

      def new
        @album = album.new
      end

      def edit
      end

      def create
        @album = album.new(album_params)

        if @album.save
          redirect_to admin_albums_path, notice: 'album was successfully created.'
        else
          render :new
        end
      end

      def update
        if @album.update(album_params)
          redirect_to admin_albums_path, notice: 'album was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        @album.destroy
        respond_to do |format|
          redirect_to admin_albums_path, notice: 'album was successfully destroyed.'
        end
      end

      private

      def album_params
        params.require(:album).permit(:author, :description, :age)
      end

      def set_breadcrumb
        add_breadcrumb 'albums', admin_albums_path
      end

      def set_album
        @album = album.find(params[:id])
        add_breadcrumb @event.title
      end

    end
  end
end