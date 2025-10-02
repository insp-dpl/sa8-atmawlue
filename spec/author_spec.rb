require "author"

RSpec.describe Author do
    describe ".initialize" do
        it "creates a vild name, and email and set attributes" do
            name = "Ava"
            email = "ava@example.org"

            author = Author.new("Ava","ava@example.org")
            expect(author).to be_a(Author)
            expect(author.name).to eq name
            expect(author.email).to match email


        end
        it "catches empty name" do
            name = ""
            email = "ava@example.org"
            expect { Author.new("Ava","ava@example.org") }.to raise_error (ArgumentError)
        end
         it "catches nil name" do
            name = nil
            email = "ava@example.org"
            expect { Author.new("Ava","ava@example.org") }.to raise_error (ArgumentError)
        end
        it "catches missing email"
        it "catches invalid email format"
    end

end