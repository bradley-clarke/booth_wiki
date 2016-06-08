# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'courses_seed.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  c = Professor.new
  c.first_name = row['first_name']
  c.last_name = row['last_name']

  c.save
  puts "#{c.first_name}, #{c.last_name} saved"
end

puts "There are now #{Professor.count} rows in the professors table"
