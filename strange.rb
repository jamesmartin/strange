require "timezone"
require "terminal-table"

if __FILE__ == $0
  zones = [
    "America/Los_Angeles",
    "Australia/Sydney"
  ].freeze

  now = Time.now

  valid_timezones = zones.map do |name|
    Timezone[name]
  end.compact

  table = Terminal::Table.new do |t|
    valid_timezones.each do |zone|
      t.add_row [zone.name, zone.dst?(now), zone.time_with_offset(now)]
    end
  end

  puts table

end
