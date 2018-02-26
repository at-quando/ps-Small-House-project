# This migration comes from spina_blog_engine (originally 20160421143949)
class CreateSpinaBlogposts < ActiveRecord::Migration[5.0]
  def change
    create_table :spina_blogposts do |t|
      t.string :title
      t.text :description
      t.text :content

      t.timestamps null: false
    end
  end
end
