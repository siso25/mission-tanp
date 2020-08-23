class PreciousdaysController < ApplicationController
  def show
  end

  def new
    @precious_day_form = PreciousDayForm.new
    @precious_people = PreciousPerson.where(user_id: current_user.id)
  end
  
  def create
    @precious_day_form = PreciousDayForm.new(precious_day_form_params)
    if @precious_day_form.save
      redirect_to preciouspeople_url
    else
      @precious_people = PreciousPerson.where(user_id: current_user.id)
      render :new
    end
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
        :year,
        :month,
        :day
      ).merge(user_id: current_user.id)
    end
end
