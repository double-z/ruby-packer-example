require 'clockwork'
include Clockwork

handler do |job|
  puts "Running #{job}"
end

every 5.minues, 'hello'
