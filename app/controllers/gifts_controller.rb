class GiftsController < ApplicationController

  def index
    ranking_order = RankingOrder.find(1)
    @gift = Gift.find(ranking_order.gift_id)
  end

  def show
  end
end
