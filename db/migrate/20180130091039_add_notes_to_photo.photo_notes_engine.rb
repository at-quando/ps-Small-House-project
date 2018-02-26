# This migration comes from photo_notes_engine (originally 20180116081338)
class AddNotesToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_reference :spina_photos, :student
    add_reference :spina_photos, :teacher
    add_column :spina_photos, :description, :string
    add_column :spina_photos, :title, :string
    add_column :spina_photos, :age, :integer
    add_column :spina_photos, :favorite, :boolean
  end
end
