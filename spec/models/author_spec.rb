require 'rails_helper'

describe "New author", type: :model do

  it "should have a first name, last name, and a homepage" do
  
  	author = Author.new#-> läuft durch mit   (first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.de/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.de/Alan_Turing")
	end
end