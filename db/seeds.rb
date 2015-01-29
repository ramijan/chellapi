# rails g model Stage name
# rails g model Artist name performing_at:datetime genre stage:references

Stage.create([
    {name: 'Coachella'},
    {name: 'Outdoor'},
    {name: 'Gobi'},
    {name: 'Mojave'},
    {name: 'Sahara'},
    {name: 'Yuma'}
  ])

Artist.create([
    {name: 'Drake', performing_at: DateTime.new(2015,4,12,20,10), genre: 'hip-hop', stage_id: 1},
    {name: 'AC/DC', performing_at: DateTime.new(2015,4,10,20), genre: 'rock', stage_id: 1},
    {name: 'Jack White', performing_at: DateTime.new(2015,4,11,20,30), genre: 'alt-rock', stage_id: 1},
    {name: 'Jenny Lewis', performing_at: DateTime.new(2015,4,10,17,35), genre: 'indie rock', stage_id: 2},
    {name: 'Interpol', performing_at: DateTime.new(2015,4,10,18,10), genre: 'indie rock', stage_id: 2},
    {name: 'Run the Jewels', performing_at: DateTime.new(2015,4,11,15,45), genre: 'rap', stage_id: 4},
    {name: 'Chet Faker', performing_at: DateTime.new(2015,4,12,16,20), genre: 'electronica', stage_id: 5}
  ])