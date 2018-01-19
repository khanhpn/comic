class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.belongs_to :commentable, polymorphic: true
      t.timestamps
    end
    add_index :comments, :commentable_type
    add_index :comments, :commentable_id
  end
end
