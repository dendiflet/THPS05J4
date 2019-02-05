require 'rails_helper'

RSpec.describe Gossip, type: :model do
	
	before(:each) do
		@gossip = Gossip.create(title: "titre du gossip", content: "contenu", user_id: "1")
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