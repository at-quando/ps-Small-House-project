class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :navbar_func

  def navbar_func
    main_nav = Spina::Category.select("title, id, urlTitle").all
    @nav = []
    main_nav.each do |p|
      @nav.push([p,p.sub_categories.select("title, id, urlTitle")])
    end
  end
end
