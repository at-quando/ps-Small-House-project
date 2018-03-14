class DeleteColumnStudent < ActiveRecord::Migration[5.1]
  def change
    remove_column :spina_students, :birthday
    change_column :spina_photos, :age, :string
  end
end
