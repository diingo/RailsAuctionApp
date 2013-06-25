class User

	attr_accessor :name, :email

	def initialize(name, email)
		@name = name
		@email = email
	end


end

class Auction #in charge of the auction items and bid placing

	attr_accessor :end_time, :auction_leader, :auction_max_bid, :current_bid

	def initialize(seconds_till_end)
		@current_bid=0
    @auction_max_bid = @current_bid
		@start_time = Time.now
		@end_time = Time.at(@start_time + seconds_till_end) #converts this date into a time object
	end
		

	def bid(user, user_max_bid)
    user_max_bid = sanitize_bid(user_max_bid)

    if user_max_bid
      
      
      puts "Placing bid for #{user.name}, max: $#{user_max_bid}"
  	  if user_max_bid > @auction_max_bid        
        if user == @auction_leader
          @auction_max_bid = user_max_bid
          puts "Thanks #{user.name}, you have updated your max bid to #{@auction_max_bid}"
        else #user != @auction_leader
          @current_bid = @auction_max_bid + 1
          @auction_max_bid = user_max_bid
          @auction_leader = user
          puts "Congrats, #{@auction_leader.name}, you are currently leading with #{@current_bid}"
        end
      end

      if user_max_bid < @auction_max_bid
        if user_max_bid > @current_bid
          @current_bid = user_max_bid + 1
          puts "#{user.name} has been outbid by #{@auction_leader.name}."
        else
          puts "Your bid must be greater than the current bid of $#{@current_bid}"
        end
      end
    end
	end

  def sanitize_bid(bid)
    if bid <= 0 
      puts "Your bid is not acceptable, can't bid with negative or zero."
      return nil
    end

    if bid - bid.floor != 0 && bid.floor == 0
      puts "Your bid is not acceptable. Can't bid below $1"
      nil
    elsif bid - bid.floor != 0
      puts "Only whole dollar bids are accepted. Rounding your bid down to #{bid.floor}"
      bid = bid.floor
    end
    bid
  end
		
	def status
		puts "The current winner is #{@auction_leader.name}"
		puts "The current bid is: $#{@current_bid}"
		puts "The current private max bid is #{@auction_max_bid}"
	end
end

def duration(weeks)

	weeks*60*60*24*7 #seconds in week
		
end
