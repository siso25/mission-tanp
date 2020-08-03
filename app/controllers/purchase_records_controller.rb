class PurchaseRecordsController < ApplicationController
  def create
    purchase_record = PurchaseRecord.new(purchase_record_parms)
    purchase_record.purchased_on = Time.current
    purchase_record.user_id = 5
    purchase_record.cancel_flug = '0'
    purchase_record.save

    redirect_to root_path
  end

  private
    def purchase_record_parms
      params.permit(:gift_id, :quantity)
    end
end
