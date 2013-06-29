Dir[File.dirname(__FILE__) + '/**/*.rb'].each {|file| require file }

module AuctionApp

  def self.weeks(weeks)
    weeks*60*60*24*7 #seconds in week
  end

end

#require 'gmail'
#load 'mailer.rb'

# Gmail.new(username, password) do |gmail|
# gmail.deliver do
#   to "email@example.com"
#   subject "Having fun in Puerto Rico!"
#   text_part do
#     body "Text of plaintext message."
#   end
#   html_part do
#     body "<p>Text of <em>html</em> message.</p>"
#   end
#   add_file "/path/to/some_image.jpg"
# end
# end
