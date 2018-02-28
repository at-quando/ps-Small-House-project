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
    add_reference :spina_students, :course
  end
end
