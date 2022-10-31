
describe "Papers index page" do
  let(:valid_attributes) {
    {
      title: "COMPUTING MACHINERY AND INTELLIGENCE",
      venue: "Mind 49: 433-460",
      year: 1950,
    }
  }

    it "contains edit links" do
        paper = Paper.create! valid_attributes
        visit papers_path
        expect(page).to have_link nil, href: edit_paper_path(paper)
    end

    it "contains delete links" do
        paper = Paper.create! valid_attributes
        count = Paper.count
        visit papers_path
        find("a[data-turbo-method='delete']").click
        expect(Paper.count).to be < count
    end
end