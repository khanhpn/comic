class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :description
      t.string :tag
      t.boolean :display, default: true, index: true
      t.belongs_to :category, index: true
      t.belongs_to :author, index: true
      t.timestamps
    end
  end
end
