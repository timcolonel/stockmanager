class WelcomeController < ApplicationController
  def index
    @quote = Finance::get_real_time_quote('aapl')

  end
end
