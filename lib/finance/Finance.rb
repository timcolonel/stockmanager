require 'net/http'
require 'finance/RealTimeQuote'

class Finance

  def self.get_stock(symbol)

  end

  def self.get_real_time_quote(symbol)
    url = "http://finance.google.com/finance/info?client=ig&q=NASDAQ:#{symbol}"
    content = Net::HTTP.get(URI.parse(url))
    json = JSON.parse(content[3...-1])[0]
    quote = RealTimeQuote.new

    quote.symbol = json['t']
    quote.value = json['l_cur']
    quote.time = Time.parse(json['lt'])
    quote
  end
end