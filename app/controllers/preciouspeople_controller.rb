class PreciouspeopleController < ApplicationController
  def index
    @precious_people = PreciousPerson.where(user_id: current_user.id)
    @precious_days = PreciousDay.includes(:precious_person).where('precious_people.user_id = ?', current_user.id)
      .references(:precious_people).order(Arel.sql("to_char(precious_days.precious_date, 'MMDD')"))
    
    sql = select_months_sql(current_user.id)
    @header_months = ActiveRecord::Base.connection.select_all(sql)
  end

  def show
  end

  private
    def select_months_sql(user_id)
      sql = <<-SQL
        select header_month
        from 
          (select to_char(precious_days.precious_date, 'FMmm') as header_month
           from precious_days
           inner join precious_people
             on precious_people.id = precious_days.precious_person_id
           where precious_people.user_id = #{user_id}) as sub
        group by header_month
        order by header_month;
      SQL

      readily_sql = sql.split("\n").map(&:strip).join(' ')
    end
end
