harsh = User.new('Harsh', 'harsh@makersquare.com')
toy = Auction.new(-1)
# toy.end_time = Time.new(1)

toy.auction_underway?

puts "this is the end time"
puts toy.end_time

puts "this is the start time"
puts toy.start_time

puts toy.auction_underway?