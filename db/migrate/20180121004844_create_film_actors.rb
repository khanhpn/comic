class CreateFilmActors < ActiveRecord::Migration[5.1]
  def change
    create_table :film_actors do |t|
      t.references :film, index: true
      t.references :actor, index: true
      t.timestamps
    end
  end
end
