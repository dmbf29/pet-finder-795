puts "Cleaning the db..."
Pet.destroy_all

puts "Creating 30 pets..."
30.times do
  Pet.create!(
    name: Faker::Ancient.primordial,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..10),
    status: Pet.statuses.keys.sample
  )
end
puts "... created #{Pet.count} pets."
