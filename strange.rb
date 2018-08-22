require "timezone"
require "terminal-table"

if __FILE__ == $0
  zones = [
    "Australia/Sydney",
    "America/Los_Angeles",
    "America/New_York",
    "Europe/Berlin",
    "Europe/London",
  ].freeze

  now = Time.now

  valid_timezones = zones.map do |name|
    Timezone[name]
  end.compact.sort

  table = Terminal::Table.new do |t|
    valid_timezones.each do |zone|
      dst = zone.dst?(now) ? "DST" : ""
      t.add_row [zone.name, dst, zone.time_with_offset(now)]
    end
  end

  puts table

end
