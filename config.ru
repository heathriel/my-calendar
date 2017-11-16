require 'almanack/server'

Almanack.config do |c|
  c.title = "Heather's Calendar"
  c.theme = "legacy" # available: legacy
  c.days_lookahead = 120

  # Your group's URL name is what you'd find at www.meetup.com/Your-Group-URL-Name/
  # You can get a Meetup API key from https://secure.meetup.com/meetup_api/key
  # c.add_meetup_group group_urlname: 'Christchurch-Ruby-Group', key: 'mysecretkey'

  # For a Google Calendar, find the "iCal" link under your Calendar's settings
  # c.add_ical_feed 'https://example.com/basic.ics'
  c.add_ical_feed 'https://calendar.google.com/calendar/ical/heather%40roceteer.com/private-3d4f9aef02796870964d72aa16ea9c87/basic.ics'
  c.add_ical_feed 'https://calendar.google.com/calendar/ical/heather%40twip.co/private-55434b5893b26f03bd2132d879376b6e/basic.ics'
  c.add_ical_feed 'https://calendar.google.com/calendar/ical/heathriel%40gmail.com/private-3baa3678dbb3c01b3dcdffe25be664ad/basic.ics'
  c.add_ical_feed 'https://outlook.office365.com/owa/calendar/efbfdce795d844c688e9a4b19ccbccf0@beneple.com/3f1ff9290e40434b814f2752c75f2cb112886287074681620193/S-1-8-3621009528-3849183770-3620677373-4216621663/reachcalendar.ics'
  c.add_ical_feed 'http://lanyrd.com/profile/heathriel/heathriel.attending.ics'
  c.add_ical_feed 'https://www.tripit.com/feed/ical/private/3E30052B-76A8CEBF35D6E6ABB7C6F6910D092147/tripit.ics'

  # Static events
  c.add_events [
    {
      title: "Edit my calendar's settings",
      description: "Edit the configuration at #{__FILE__}",
      start_date: Time.now + 30 * 60
    }
  ]
end

run Almanack::Server
