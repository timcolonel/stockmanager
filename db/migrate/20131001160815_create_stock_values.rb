class CreateStockValues < ActiveRecord::Migration
  def change
    create_table :stock_values do |t|
      t.float :value
      t.references :stock
      t.timestamps
    end
  end
end
