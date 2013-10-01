class CreateStockStocks < ActiveRecord::Migration
  def change
    create_table :stock_stocks do |t|
      t.string :name
      t.string :symbol
      t.boolean :watch

      t.timestamps
    end
  end
end
