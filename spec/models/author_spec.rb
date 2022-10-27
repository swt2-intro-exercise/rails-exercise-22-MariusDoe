describe "Author" do
  it "should have a first_name, last_name, homepage and name", :type => :model do
    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    expect(author.name).to eq("Alan Turing")
  end

  it "should not allow creation of authors without last names" do
    author = Author.new(first_name: "Alan", last_name: nil, homepage: "http://wikipedia.org/Alan_Turing")
    expect(author).not_to be_valid
    author = Author.new(first_name: "Alan", last_name: "", homepage: "http://wikipedia.org/Alan_Turing")
    expect(author).not_to be_valid
  end
end
