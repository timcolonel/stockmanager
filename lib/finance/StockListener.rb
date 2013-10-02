require 'finance/RealTimeQuote'
require 'finance/StockListener'

class StockListener

  #load the quotes until time is 4pm
  def listen_day
    while true
      quote = Finance::get_real_time_quote('aapl')

      stock_quote = Stock::Quote.new
      stock_quote.value = quote.value
      stock_quote.stock = Stock::Stock.find_by_symbol('aapl')
      stock_quote.save

      sleep 1
    end
  end
end