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

require 'rails_helper'

RSpec.describe Question, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
