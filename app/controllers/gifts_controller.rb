class GiftsController < ApplicationController

  def index
    @ranking_orders = RankingOrder.where(category_id: 1).order(:rank)
    first_rank_product = @ranking_orders.select { |ranking_order| ranking_order.rank == 1 }
    @title = first_rank_product[0].category_name
  end

  def show
  end
end
