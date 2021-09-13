class QuotesController < ApplicationController
  
  def index
    @quotes = Quote.all
    render json: @quotes, except: [:created_at, :updated_at]
  end

end
