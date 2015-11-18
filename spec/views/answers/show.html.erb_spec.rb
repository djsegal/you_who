require 'rails_helper'

RSpec.describe "answers/show", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :name => "MyText",
      :position => "Position",
      :user => nil,
      :game => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
