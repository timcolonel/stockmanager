class RealTimeQuote
  attr_accessor :symbol, :value, :time

  def initialize(symbol = nil, value = nil, time = nil)
    @symbol = symbol
    @value = value
    @time = time
  end
end