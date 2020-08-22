class PreciousdaysController < ApplicationController
  def show
  end

  def new
    @precious_day_form = PreciousDayForm.new
    @precious_people = PreciousPerson.where(user_id: current_user.id)
  end
  
  def create
    @precious_day_form = PreciousDayForm.new(precious_day_form_params)
    byebug
    render :new
  end

  def update
  end

  def destroy
  end

  private
    def precious_day_form_params
      params.require(:precious_day_form).permit(
        :id,
        :name,
        :age_id,
        :relation_id,
        :scene_id,
        :precious_date
      ).merge(user_id: current_user.id)
    end
end
