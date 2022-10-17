# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def name_with_dob
    return "#{self.name} (#{self.dob})"
  end
  def characters
    my_id = self.id
    return Character.where({ :actor_id => self.id })
  end  
end
