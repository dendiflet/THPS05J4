require 'rails_helper'

RSpec.describe Gossip, type: :model do
	
	before(:each) do
 @user = User.create(first_name: "beber", last_name: "atroispoilaucul", email: "beber_du_95@yopmail.com", city_id: "1")
 		@gossip = Gossip.create(title: "titregossip", content: "contenu", user: @user)
	end

	context "validation" do 

		it "is valid with valid attributes" do
			expect(@gossip).to be_a(Gossip)
			expect(@gossip).to be_valid
		end

    describe "#title" do
    	it "should not be valid without title" do
    		bad_gossip = Gossip.create(content: 'contenu')
    		expect(bad_gossip).not_to be_valid
    	end
    end

    describe "#content" do
    	it "should not be valid without content" do
    		bad_gossip = Gossip.create(title: 'titre')
    		expect(bad_gossip).not_to be_valid
    	end
		end
	end
end    