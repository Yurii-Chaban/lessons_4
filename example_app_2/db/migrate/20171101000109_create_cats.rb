class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.text :how_to_call_a_kitten

      t.timestamps
    end
  end
end
