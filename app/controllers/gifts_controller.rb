class GiftsController < ApplicationController

  def index
    @ranking_orders = RankingOrder.all.order(:category_id, :rank)
    @ranking_categories = RankingOrder.select(:category_id, :category_name).distinct.where.not(category_id: 5).order(:category_id)
    @new_product_rankings = @ranking_orders.select { |ranking_order| ranking_order.category_id == 5 }
  end

  def show
    @gift = Gift.find(params[:id])
    @shipping_date = (Date.today + 3).strftime("%-m月%-d日")
  end
end
