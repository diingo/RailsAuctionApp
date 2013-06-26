require 'gmail'

def send_email(email_address,subject_line,body)
	Gmail.new(ENV['GMAIL_EMAIL'], ENV['GMAIL_PASSWORD']) do |gmail|
  	gmail.deliver do
  	  to email_address
  	  subject subject_line 

  	  text_part do
  	    body body
  	  end
  	end
  end
end







