class PreciousdaysController < ApplicationController
  def show
  end

  def new
    @precious_person = PreciousPerson.new
    @precious_person.precious_days.build
    @precious_people = PreciousPerson.where(user_id: current_user.id)
  end
  
  def create
    @precious_people = PreciousPerson.where(user_id: current_user.id)
    @precious_person = PreciousPerson.new(precious_day_params)

    # if @precious_person.save
    #   redirect_to root_url
    # else
      render :new
    # end
  end

  def update
  end

  def destroy
  end

  private
    def precious_person_params
      params.require(:precious_person).permit(
        :id,
        :name,
        :age_id,
        :relation_id,
        precious_days_attributes: [
          :id,
          :scene_id,
          :precious_date
        ]
      ).merge(user_id: current_user.id)
    end

    def precious_day_params
      params.require(:precious_person).permit(
        :id,
        precious_days_attributes: [
          :id,
          :scene_id,
          :precious_date
        ]
      ).merge(user_id: current_user.id)
    end
end
