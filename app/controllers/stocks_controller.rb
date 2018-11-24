class StocksController < ApplicationController
  
  def search
    if params[:stock].blank?
      flash.now[:danger] = "you entered an empty search string"
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "you have entered an incorrect symbol" unless @stock
    end
    render partial: 'users/result'  
  end

end