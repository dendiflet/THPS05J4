require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do 
    @user = User.create(first_name: "beber", last_name: "atroispoilaucul", email: "beber_du_95@yopmail.com")
  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end

    describe "#first_name" do
      bad_user = User.create( last_name: "atroispoilaucul", email: "beber_du_95@yopmail.com")
      expect(bad_user).not_to be_valid
    end

    describe "#last_name" do
      bad_user = User.create(first_name: "beber", email: "beber95@yopmail.com")
      expect(bad_user).not_to be_valid

    end


    describe "#email" do
      bad_user = User.create(first_name: "beber", last_name: "atroispoilaucul", email: "beber_du_95yopmail.com")  
      expect(bad_user).not_to be_valid
 
    end


  end



end