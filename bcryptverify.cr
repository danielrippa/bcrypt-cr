  require "crypto/bcrypt"

  if ARGV.size > 1
    password = ARGV[0]
    hash = ARGV[1]

    begin
      Crypto::Bcrypt::Password.new(hash).verify(password)
      puts "ok"
    rescue e
      puts "error: #{e.message}"
      exit 1
    end

  else
    puts "Usage: bcryptverify <password> <hash>"
  end