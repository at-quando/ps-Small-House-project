# This migration comes from students_engine (originally 20180116085436)
class CreateSpinaStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_students do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :birthday
      t.string :phone
      t.text :description
      t.string :home
      t.string :parent
      t.datetime :end_date
      t.string :avatar
      t.boolean :favorite

      t.timestamps
    end
  end
end
