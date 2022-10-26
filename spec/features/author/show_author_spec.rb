require 'rails_helper'

describe "Show author page", type: :feature do
  it "renders without error" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
  end
end