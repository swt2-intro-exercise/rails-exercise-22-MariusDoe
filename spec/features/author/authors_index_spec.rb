require 'rails_helper'

describe "Authors index page", type: :feature do
  it "shows authors" do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link "New", href: new_author_path
    expect(page).to have_text "Name"
    expect(page).to have_text "Homepage"
    expect(page).to have_link @alan.name, href: author_path(@alan)
    expect(page).to have_link @alan.homepage, href: @alan.homepage
  end
end
