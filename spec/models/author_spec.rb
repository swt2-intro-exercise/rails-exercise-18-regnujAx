require 'rails_helper'

describe "New author", type: :model do

  author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.de/Alan_Turing")

  it "should have a first name, last name, and a homepage" do
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.de/Alan_Turing")
	end

  it "should have a name" do
    expect(author.name).to eq("Alan Turing")
  end
end