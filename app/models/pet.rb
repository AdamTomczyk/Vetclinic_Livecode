class Pet < ApplicationRecord

  has_many :appointments
  has_many :doctors, through: :appointments


  def create_icon
    case self.species
    when "turtle"
      return "turtle.png"
    when "rabbit"
      return "rabbit.png"
    when "mouse"
      return "mouse.png"
     when "cat"
      return "cat.png"
    else
       return "dog.png"
    end
  end

  def set_background
     case self.species
    when "turtle"
      return "#f7d373"
    when "rabbit"
      return "#bfa2f7"
    when "mouse"
      return "#f3c4c6"
     when "cat"
      return "#c8d9f5"
    else
       return "#daf7fd"
    end
  end

end
