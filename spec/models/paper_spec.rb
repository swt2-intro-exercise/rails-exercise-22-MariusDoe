require 'rails_helper'

describe Paper, type: :model do
  let(:valid_attributes) {
    {
      title: "COMPUTING MACHINERY AND INTELLIGENCE",
      venue: "Mind 49: 433-460",
      year: 1950,
    }
  }

  it "has an authors list" do
    paper = Paper.create! valid_attributes
    expect(paper.authors.length).to eq 0
  end
end
