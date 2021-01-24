require 'bin/error_handling/messenger_error'

class Messenger
  include MessengerError

  def write_to_stdout (message)

    begin
      ios = IO.new STDOUT.fileno
      ios.write "#{message}"
    rescue MESSENGER_ERRORS => error
      p "Messenger Error: #{error.message}"
      p "Messenger Inspect: #{error.inspect}"
      p "Messenger Backtrace: #{error.backtrace}"
    ensure
      ios.close
    end

  end


end