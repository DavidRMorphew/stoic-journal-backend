class QuotesController < ApplicationController
  
  def index
    @quotes = Quote.all
    render json: @quotes, except: [:created_at, :updated_at]
  end

  def show
    if @quote = Quote.find_by(id: params[:id])
      render json: @quote, except: [:created_at, :updated_at]
    end
  end
end
