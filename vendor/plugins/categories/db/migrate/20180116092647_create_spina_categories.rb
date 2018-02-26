class CreateSpinaCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_categories do |t|
      t.string :title
      t.string :urlTitle

      t.timestamps
    end
  end
end
