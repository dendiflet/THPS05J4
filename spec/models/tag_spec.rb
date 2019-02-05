require 'rails_helper'

RSpec.describe Tag, type: :model do

  before(:each) do 
    @tag = Tag.create(title: "nom_du_tag")
  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@tag).to be_valid
      expect(@tag).to be_a(Tag)
    end

    describe "#title" do
      bad_tag = Tag.create
      expect(bad_tag).not_to be_valid
    end

    describe "#title_length" do
      bad_tag = Tag.create(title: "fj")
      expect(bad_tag).not_to be_valid
    end



  end

  
end