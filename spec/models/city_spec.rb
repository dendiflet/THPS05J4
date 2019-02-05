require 'rails_helper'

RSpec.describe City, type: :model do

  before(:each) do 
    @city = City.create(name: "nom_de_la_ville", zip_code: "38 000" )
  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@city).to be_a(City)
    end

    describe "#name" do
      it "should not be valid without a #name" do
        bad_city =City.create(zip_code: "1233445")
        expect(bad_city).not_to be_valid  
      end
    end

    describe "#zip_code" do
      it "sould not be valid without a #zip_code" do
        bad_city =City.create(name: "nom_de_la_ville")
        expect(bad_city).not_to be_valid  
      end
    end

    describe "taille #zip_code" do
      it "sould not be valid with a short #zip_code" do
        bad_city =City.create(name: "nom_de_la_ville", zip_code: "145")
        expect(bad_city).not_to be_valid  
      end
    end 

  end
end