# == Schema Information
#
# Table name: answers
#
#  id         :integer          not null, primary key
#  name       :boolean
#  position   :integer
#  user_id    :integer
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_answers_on_game_id  (game_id)
#  index_answers_on_user_id  (user_id)
#

FactoryGirl.define do
  factory :answer do
    name "MyText"
position "MyString"
user nil
game nil
  end

end
