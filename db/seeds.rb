# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

notes = Note.create([
  { name: "Core Animation Demo WWDC 2007 - YouTube", description: "Always worth a re-watch: Steve Jobs demonstrating Core Animation at WWDC 2007." },
  { name: "Steve Jobs: A Few Memories | Xconomy", description: %(When I first met Steve Jobs nearly 25 years ago I was struck by him explaining to me that NeXT was what he "wanted to do with his thirties".)},
  { name: "NeXTSTEP Release 3 Demo - YouTube", description: "Steve Jobs demoing NeXTSTEP R3, including Interface Builder and Database Kit!" }
])
