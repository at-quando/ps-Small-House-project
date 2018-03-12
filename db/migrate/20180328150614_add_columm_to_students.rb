class AddColummToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :spina_students, :receive_day, :datetime
    change_column :spina_courses, :duration_min, :string
    remove_column :spina_courses, :duration_max
  end
end
