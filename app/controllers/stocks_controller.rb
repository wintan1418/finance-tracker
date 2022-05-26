class StocksController < ApplicationController

  def search
      if params[:stock].present?
          @stock = Stock.new_lookup(params[:stock]) 
            if @stock
              render 'users/my_portfolio'
            else
            flash[:alert] =" please enter a valid symbol"
            redirect_to my_portfolio_path  
            end
          else
            flash[:alert] = "please enter a symbol to search"
            redirect_to my_portfolio_path 
      end
  end

end  
