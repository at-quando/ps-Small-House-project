# This migration comes from spina_blog_engine (originally 20160421153358)
class AddSlugToSpinaBlogposts < ActiveRecord::Migration[5.0]
  def change
    add_column :spina_blogposts, :slug, :string
  end
end
