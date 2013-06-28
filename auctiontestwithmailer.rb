load 'auctionapp.rb'

gene = User.new('Gene', 'gene.gkl@gmail.com')
alex = User.new('Alex', 'a17levine@gmail.com')
# shaan = User.new('Shaan', 'shaan@gmail.com')

auction_duration=8
ravi = Auction.new(auction_duration, 'Date with Ravi', 'Anything can happen with this magical man. Winning bid goes to charity.')
puts "Auction ends at #{ravi.end_time}"

def divider
	puts "========"
end

ravi.current_bid = 20

sleep_time = 1

# First bid and what happens when auction leader updates their bid
divider
ravi.bid(gene,40)
ravi.status

sleep(sleep_time)
divider
ravi.bid(gene,45)
ravi.status

# Alex beats Gene
sleep(sleep_time)
divider
ravi.bid(alex,55)
ravi.status

# Gene bids again but does not meet Alex's max bid
sleep(sleep_time)
divider
ravi.bid(gene, 50)
ravi.status

#Gene overtakes Alex's bid
sleep(sleep_time)
divider
ravi.bid(gene, 70)
ravi.status

#Invalid neg bid
sleep(sleep_time)
divider
ravi.bid(alex, -5)
ravi.status

#Invalid non-integer bid
sleep(sleep_time)
divider
ravi.bid(gene, 0.34)
ravi.status

#Alex overtakes Gene
sleep(sleep_time)
divider
ravi.bid(alex, 75)
ravi.status

#Gene tries to win but auction is over
sleep(sleep_time)
divider
puts "Gene tries to win the auction with a bid of $75"
ravi.bid(gene, 75)
ravi.status




