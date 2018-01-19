class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :old
      t.string :address
      t.timestamps
    end
  end
end
