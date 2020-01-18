class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    a_list = []
    actors.collect do |actor|
      a_list << actor.full_name
    end
  end

end
