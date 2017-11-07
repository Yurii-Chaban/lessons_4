class CreateFields < ActiveRecord::Migration[5.1]
  def change
    create_table :fields do |t|
      t.string :field
      t.text :description

      t.timestamps
    end
  end
end
