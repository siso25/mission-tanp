class PreciousdaysController < ApplicationController
  def show
  end

  def new
    @precious_person = PreciousPerson.new
    @precious_person.precious_days.build
    @precious_people = PreciousPerson.where(user_id: current_user.id)
  end
  
  def create
    @precious_person = PreciousPerson.new(precious_person_params)
    exists_precious_person = PreciousPerson.find_by(id: precious_person_params["id"])
    if exists_precious_person
      precious_day = exists_precious_person.precious_days.build(precious_person_params["precious_days_attributes"]["0"])
      saving_data = precious_day
    else
      saving_data = @precious_person
    end
    
    # if saving_data.save
    #   redirect_to root_url
    # else
      @precious_people = PreciousPerson.where(user_id: current_user.id)
      render action: :new
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
end
