require 'gmail'


def email_welcome(user)
	email_send(user.email, "Welcome to the Auction App.", "You can start bidding on auctions! Yes!!\n\nSincerely,\n\nAlex and Gene\nAuction Bot Team")
	
end

def email_confirm_lead(user, auction)
	message = ""
	message << "Auction: #{auction.title}\n[#{auction.description}]\n\n"
	message << "Your leading bid is: $#{auction.current_bid}\nYour max bid is $#{auction.auction_max_bid}\n\nConsider increasing your max bid for better chances to win!"
	email_send(user.email, "You are leading bidder: #{auction.title}!", message)
	
end

def email_confirm_outbid(user, auction)
	message = ""
	message << "Auction: #{auction.title}\n[#{auction.description}]\n\n"
	message << "The current bid is $#{auction.current_bid}"
	email_send(user.email, "You were outbid! / #{auction.title}", message)
end

def email_end_win(user, auction)
	message = ""
	message << "Auction: #{auction.title}\n[#{auction.description}]\n\n"
	message << "Congrats #{user.name}, you're a winner!!\n\nYour winning bid is $#{auction.current_bid}\n\nClick here to submit payment."
	email_send(user.email, "You've won! / #{auction.title}", message)
end

def email_end_lose(user, auction)
	message = ""
	message << "Auction: #{auction.title}\n[#{auction.description}]\n\n"
	message << "The winning bid was $#{auction.current_bid}\n\nThank you for using Auction Bot!\n\nSincerely,\n\nAlex and Gene\nAuction Bot Team"
	email_send(user.email, "The auction has ended for #{auction.title}", message )
end

def email_max_bid_update(user, auction)
	message = ""
	message << "Auction: #{auction.title}\n[#{auction.description}]\n\n"
	message << "The bidding is currently at $#{auction.current_bid}\n\nYou have updated your max bid to $#{auction.auction_max_bid}"
	email_send(user.email, "You have updated your max bid for #{auction.title}", message )
end

def email_send(email_address,subject_line,body)
	# Gmail.new(ENV['GMAIL_EMAIL'], ENV['GMAIL_PASSWORD']) do |gmail|
 #  	gmail.deliver do
 #  		from "Auction Bot"
 #  	  to email_address
 #  	  subject subject_line 

 #  	  text_part do
 #  	    body body
 #  	  end
 #  	end
 #  end
 
  email_divider
 	puts "sending email to #{email_address}, with subject_line #{subject_line}"
 	puts "Msg: #{body}"
 	email_divider
end

def email_divider
	puts "****************"
	
end







