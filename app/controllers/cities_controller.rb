class CitiesController < ApplicationController


	def show

@potin_by_city = Array.new

		puts "#" * 60
		puts "je suis dans show"

		@city = City.find_by(id: params[:id])
		puts params
		puts @city.id
		puts @city.name
		puts "#" * 60

		puts "ici les users"
		@user_by_city = User.where(city_id: @city.id)
#		puts "#" * 60
		puts @user_by_city
		print "ils sont "
		puts @user_by_city.length
		puts "#" * 60
    @user_by_city.each do |user|
    	puts user.id
		  @potin_by_city << Gossip.where(user_id: user.id)
		  puts @potin_by_city
		puts "#" * 60
	  end
	  byebug
	end
end
