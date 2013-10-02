class RenameValueToQuote < ActiveRecord::Migration
  def change
    rename_table :stock_values, :stock_quotes
  end
end
