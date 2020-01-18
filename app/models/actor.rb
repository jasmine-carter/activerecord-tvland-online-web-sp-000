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
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end


end
