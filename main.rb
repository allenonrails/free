require 'pony'
require 'dotenv/load'

Pony.mail({
  to: => 'you@example.com',
  subject: "New message",
  body: "message",
  via: => :smtp,
  via_options: => {
    :address              => ENV['SMTP_ADDRESS'],
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'user',
    :password             => 'password_see_note',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  }
})