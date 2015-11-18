# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  name       :text
#  position   :integer
#  user_id    :integer
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_questions_on_game_id  (game_id)
#  index_questions_on_user_id  (user_id)
#

class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  acts_as_list scope: :game
  validates :name, presence: true
end
