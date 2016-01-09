require 'gmail'

username = 'PUT YOUR USERNAME'
password = 'PUT YOUR PASSWORD'

label_name = 'TARGET LABEL NAME'

Gmail.connect(username, password) do |gmail|
  email = gmail.label(label_name).emails.first

  puts 'subject: ' + email.subject
  puts 'body: ' + email.body.decoded.encode('UTF-8', email.charset)
end
