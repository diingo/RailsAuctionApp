load 'auctionapp.rb'

gene = User.new('Gene', 'gene.gkl@gmail.com')
alex = User.new('Alex', 'a17levine@gmail.com')
sonny = User.new('Sonny', 'sonnyg.email@gmail.com')

moose = Auction.new(weeks(1), 'Moose Accessory', 'You really want to buy this accessory for your moose. Significant performance improvements!')

def divider
	puts "========"
end

moose.current_bid = 20


divider
moose.bid(gene,40)
moose.status

divider
moose.bid(gene,45)
moose.status

divider
moose.bid(alex,55)
moose.status

divider
moose.bid(gene, 50)
moose.status

divider
moose.bid(sonny, 60)
moose.status

divider
moose.bid(gene, 80)
moose.status

