load 'auctionapp.rb'

gene = User.new('Gene', 'gene@gmail.com')
alex = User.new('Alex', 'alex@gmail.com')
dufus = User.new('Dufus', 'whatever@gmail.com')
harsh = User.new('Harsh', 'harsh@makersquare.com')
toy = Auction.new(weeks(1))
# toy = Auction.new(-1)

def divider
	puts "========"
end

# toy.auction_max_bid = 30
toy.current_bid = 20


divider
toy.bid(gene,40)
toy.status

divider
toy.bid(alex,50)
toy.status

divider
toy.bid(gene,45)
toy.status

divider
puts "Bid is -85"
toy.bid(dufus, -85)
toy.status

divider
puts "Bid is 85.40"
toy.bid(dufus, 85.40)
toy.status

divider
puts "Bid is 110"
toy.bid(harsh, 110)
toy.status

divider
puts "Bid is 110"
toy.bid(gene, 90)
toy.status

divider
puts "Bid is a word"
toy.bid(harsh, "hello")
toy.status

divider
puts "This is a test of our most recent auction_underway function"
puts toy.auction_underway?


# divider
# puts "Attempt to sanitize neg number: -20"
# toy.sanitize_bid(-20) 
# puts "Attempt to sanitize positive decimal value: 0.034"
# toy.sanitize_bid(0.034)
# puts "Attempt to sanitize negative decimal value: -0.034"
# toy.sanitize_bid(-0.034)
# puts "Attempt to sanitize zero value: 0"
# toy.sanitize_bid(0)
# puts "Attempt to sanitize zero value: 85.22"
# toy.sanitize_bid(85.22)
