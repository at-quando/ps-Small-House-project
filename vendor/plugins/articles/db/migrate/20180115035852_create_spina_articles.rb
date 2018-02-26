class CreateSpinaArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_articles do |t|
      t.string :title
      t.text :description
      t.text :content
      t.datetime :date

      t.timestamps
    end
  end
end
