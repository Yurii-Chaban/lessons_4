class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :product_one
      t.string :product_two
      t.string :product_tree

      t.timestamps
    end
  end
end
