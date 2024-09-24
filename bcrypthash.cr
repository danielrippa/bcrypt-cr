  require "crypto/bcrypt"

  if ARGV.size > 0
    password = ARGV[0]
    hash = Crypto::Bcrypt::Password.create(password)
    puts hash
  else
    puts "No arguments provided."
  end
