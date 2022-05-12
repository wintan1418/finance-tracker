class StockController < ApplicationController

  def search
    stock = Stock.new_lookup(params[:stock])
    render json: stock
  end

end