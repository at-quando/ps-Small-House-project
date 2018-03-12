# This migration comes from money_engine (originally 20180310191513)
class CreateSpinaMones < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_mones do |t|
      t.integer :title
      t.text :description
      t.datetime :payment_date
      t.datetime :receive_day
      t.belongs_to :student
      t.string :code_course
      
      t.timestamps
    end
  end
end
