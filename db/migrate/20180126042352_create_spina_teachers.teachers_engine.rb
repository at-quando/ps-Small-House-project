# This migration comes from teachers_engine (originally 20180116090135)
class CreateSpinaTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_teachers do |t|
      t.string :name
      t.text :info
      t.text :specialize
      t.text :teaching_technic
      t.string :avatar
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :birthday
      t.string :phone
      t.string :salary

      t.timestamps
    end
  end
end
