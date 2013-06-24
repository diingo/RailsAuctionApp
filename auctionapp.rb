class User

	attr_accessor :name, :email

	def initialize(name, email)
		@name = name
		@email = email
	end


end

class Auction

	attr_accessor :end_time, :auction_leader, :auction_max_bid, :current_bid

	def initialize(seconds_till_end)
		@auction_max_bid=0
		@current_bid=0
		@start_time = Time.now
		@end_time = Time.at(@start_time + seconds_till_end) #converts this date into a time object relative to epoch time
	end
		

	def bid(user, max_bid)

		puts "Your #{user.name} max bid is #{max_bid}"
		user
		if max_bid > @auction_max_bid
			@auction_max_bid = max_bid
			@auction_leader = user
			@current_bid = @current_bid + 1
			puts "You, #{user.name}, are now the auction leader with current bid of #{@current_bid}!"
			
		end
		
	end

end



# class Bid
# 	attr_accessor :auction, :max_bid, :user

# 	def initialize (user, max_bid)
# 		@max_bid = max_bid
# 		@user = user
		
# 	end
# end


def duration(weeks)

	weeks*60*60*24*7 #seconds in week
		
end
