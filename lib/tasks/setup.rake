desc "Setup database"
task :setup do
  puts 'Building database from schema...'
  `rake db:setup`
  puts 'Seeding database...'
  'rake db:seed'
  puts 'Setup complete.'
end