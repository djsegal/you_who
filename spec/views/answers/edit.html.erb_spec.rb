require 'rails_helper'

RSpec.describe "answers/edit", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :name => "MyText",
      :position => "MyString",
      :user => nil,
      :game => nil
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "textarea#answer_name[name=?]", "answer[name]"

      assert_select "input#answer_position[name=?]", "answer[position]"

      assert_select "input#answer_user_id[name=?]", "answer[user_id]"

      assert_select "input#answer_game_id[name=?]", "answer[game_id]"
    end
  end
end
