# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Actor.first_or_create([
 { first: 'Penny',
 last: 'Ludwig' },
 { first: 'Luxor',
 last: 'Pennyweist' },
 { first: 'Middlecref',
 last: 'Longhaven' },
 { first: 'Lexington',
 last: 'Horsebongle' },
 { first: 'Tye',
 last: 'Clementine' }
])

Producer.first_or_create([
  { first: 'Bonnie',
  last: 'Malonie' },
  { first: 'Hammington',
  last: 'Harrington' },
  { first: 'Rebecca',
  last: 'Longhorn' },
  { first: 'Gertrude',
  last: 'Moustachien' }
])

Video.first_or_create([
 { title: 'Last of the Cheese',
 description: 'Moe the vigilant cheese thief of France is about to retire, but decides to attempt the greatest heist ever before saying goodbye.',
 producer_id: 1 },
 { title: 'Time Bloat',
 description: 'A courageous journey takes 3 astronauts into uncharted time and space.',
 producer_id: 2 }
])

Performance.first_or_create([
  { video_id: 1,
    actor_id: 1 },
  { video_id: 1,
    actor_id: 2 },

  { video_id: 2,
    actor_id: 3 },
  { video_id: 2,
    actor_id: 4 }
])