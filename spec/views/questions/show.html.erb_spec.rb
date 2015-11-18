require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :name => "Name",
      :position => "Position",
      :user => nil,
      :game => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
