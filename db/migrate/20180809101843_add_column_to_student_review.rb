class AddColumnToStudentReview < ActiveRecord::Migration[5.1]
  def change
    add_column :spina_students, :review, :text
  end
end
