class AlbumsController < ApplicationController
  def index
    @works = Spina::Photo.all
  end
end
