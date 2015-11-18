require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :name => "MyText",
      :position => "MyString",
      :user => nil,
      :game => nil
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "textarea#answer_name[name=?]", "answer[name]"

      assert_select "input#answer_position[name=?]", "answer[position]"

      assert_select "input#answer_user_id[name=?]", "answer[user_id]"

      assert_select "input#answer_game_id[name=?]", "answer[game_id]"
    end
  end
end
