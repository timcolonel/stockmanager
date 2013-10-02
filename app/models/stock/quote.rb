class Stock::Quote < ActiveRecord::Base
  belongs_to :stock, :class_name => Stock::Stock
end
