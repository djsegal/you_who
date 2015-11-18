# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ActiveRecord::Base

  has_and_belongs_to_many :users
  has_and_belongs_to_many :people

  has_many :questions, -> { order(position: :desc) }
  has_many :answers, -> { order(position: :desc) }

end
