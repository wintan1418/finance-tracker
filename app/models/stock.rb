class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new( publishable_token: 'Tpk_c5dcaaaa8f28474e93d3b49cdd097d1f',
                                 endpoint: 'https://sandbox.iexapis.com/v1')
 
    client.price(ticker_symbol)
   end
end
