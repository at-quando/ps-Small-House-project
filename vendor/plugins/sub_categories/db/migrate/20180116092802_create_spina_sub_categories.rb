class CreateSpinaSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_sub_categories do |t|
      t.string :title
      t.string :urlTitle
      t.belongs_to :category

      t.timestamps
    end
  end
end
