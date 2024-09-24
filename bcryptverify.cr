  require "crypto/bcrypt"

  if ARGV.size > 1
    password = ARGV[0]
    hash = ARGV[1]

    succeeded = false
    message = "no match"

    begin
      succeeded = Crypto::Bcrypt::Password.new(hash).verify(password)
      if succeeded
        message = "ok"
      else
        message = "no match"
      end
    rescue e
      message = "error: #{e.message}"
    end

    puts message
    if !succeeded
      exit 1
    end

  else
    puts "Usage: bcryptverify <password> <hash>"
  end