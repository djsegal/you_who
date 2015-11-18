require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :name => "MyString",
      :position => "MyString",
      :user => nil,
      :game => nil
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_name[name=?]", "question[name]"

      assert_select "input#question_position[name=?]", "question[position]"

      assert_select "input#question_user_id[name=?]", "question[user_id]"

      assert_select "input#question_game_id[name=?]", "question[game_id]"
    end
  end
end
