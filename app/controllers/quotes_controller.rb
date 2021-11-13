class QuotesController < ApplicationController
  
  def index
    @quotes = Quote.all
    render json: QuoteSerializer.new(@quotes)
  end

  def show
    if @quote = Quote.find_by(id: params[:id])
      render json: QuoteSerializer.new(@quote)
    end
  end
end
