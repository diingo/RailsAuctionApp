load 'mailer.rb'
load 'auctionapp.rb'
require 'gmail'


gene = User.new('Gene', 'gene.gkl@gmail.com')
alex = User.new('Alex', 'a17levine@gmail.com')
dufus = User.new('Dufus', 'whatever@gmail.com')
harsh = User.new('Harsh', 'harsh@makersquare.com')

toy = Auction.new(weeks(1), 'toy', 'a big toy')

# email_welcome(alex)
# email_end_lose(alex, toy)
# email_max_bid_update(alex, toy)









