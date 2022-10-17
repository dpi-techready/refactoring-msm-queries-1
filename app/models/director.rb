# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def name_with_dob
    return "#{self.name} (#{self.dob})"
  end
  def filmography
    my_id = self.id
    matching_movies = Movie.where({ :director_id => my_id })
    return matching_movies
  end  
  # three 1-N associations
  # - Director => Movie
  # - Movie => Character
  # - Actor => Character

  # Try define:
  # - Director#filmography <-- Instant method called filmography in the director class (short hand Ruby notation)
  # - Movie#director
  # - Movie#characters
  # - Character#movie
  # - Actor#characters
  # - Character#actor
end
