# This migration comes from spina_blog_engine (originally 20160422112643)
class AddPhotoIdToSpinaBlogposts < ActiveRecord::Migration[5.0]
  def change
    add_column :spina_blogposts, :photo_id, :integer
  end
end
