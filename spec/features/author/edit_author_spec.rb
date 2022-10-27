require 'rails_helper'

describe "Edit author page", type: :feature do
  it "renders without error" do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
    page.fill_in 'author[first_name]', with: 'My boy'
    find('input[type="submit"]').click
    @alan.reload
    expect(@alan.first_name).to eq "My boy"
  end
end
