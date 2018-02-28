# This migration comes from courses_engine (originally 20180227101212)
# This migration comes from courses_engine (originally 20180227101212)
class CreateSpinaCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_courses do |t|
      t.integer :level
      t.string :code, unique: true
      t.string :name
      t.float :duration_min
      t.float :duration_max
      t.integer :learning_days
      t.float :learning_hours
      t.float :course_fee
      t.string :note

      t.timestamps
    end
  end
end
