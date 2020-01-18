class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = []
    full_name << self.first_name
    full_name << self.last_name
    full_name.join("\s")
  end

  def list_roles
    #for every character, return its name, then find show name by id
    a = []
      self.characters.each do
      a << "{character.name} - #{Show.find_by(character.show_id).name}"
    a
    end
  end
end
