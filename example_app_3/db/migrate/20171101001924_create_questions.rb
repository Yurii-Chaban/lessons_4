class Createfields < ActiveRecord::Migration[5.1]
  def change
    create_table :fields do |t|
      t.string :field_categoryee
      t.text :field
      t.text :answer

      t.timestamps
    end
  end
end
