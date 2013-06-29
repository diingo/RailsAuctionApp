require_relative 'test_helper'

module AuctionApp
  harsh = User.new('Harsh', 'harsh@makersquare.com')
  toy   = Auction.new(-1, 'Test Toy', 'This is a test toy.')
# toy.end_time = Time.new(1)

  toy.auction_underway?

  puts "this is the end time"
  puts toy.end_time

  puts "this is the start time"
  puts toy.start_time

  puts toy.auction_underway?
end
