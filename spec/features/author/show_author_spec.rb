require 'rails_helper'

describe "Show author page", type: :feature do
  it "renders without error" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
  end

  it "renders an author's details" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end
