class PreciousDayForm
  include ActiveModel::Model

  attr_accessor :id, :name, :age_id, :relation_id, :scene_id, :precious_date(1i), :user_id

  validates :id_or_name, presence: true
  validates :relation_id, presence: true

  def save
    return false if invalid?

    precious_person_exists = PreciousPerson.find_by(id: id)
    
    if precious_person_exists
      precious_day = precious_person_exists.precious_days.new(scene_id: scene_id, precious_date: precious_date)
    else
      precious_person = PreciousPerson.new(name: name, age_id: age_id, relation_id: relation_id, user_id: user_id)
      precious_person.save!
      
      precious_day = precious_person.precious_days.new(scene_id: scene_id, precious_date: precious_date)
    end

    precious_day.save!

    true
  end

  def id_or_name
    id.presence || name.presence
  end
end