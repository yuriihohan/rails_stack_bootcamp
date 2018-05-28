require './humanized_duration'

puts HumanizedDuration.new(6_200_000).to_s
puts HumanizedDuration.new(36).to_s
puts HumanizedDuration.new(62).to_s
puts HumanizedDuration.new(3662).to_s
