class PreciouspeopleController < ApplicationController
  def index
    @precious_people = PreciousPerson.where(user_id: current_user.id)
    @precious_days = PreciousDay.includes(:precious_person).where('precious_people.user_id = ?', current_user.id)
      .references(:precious_people).order(Arel.sql("to_char(precious_days.precious_date, 'MMDD')"))
  end

  def show
  end
end
