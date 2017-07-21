class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    categories = ["state","national"]
    category = categories.shuffle.sample
    20.times do |i|
      park = Park.create!(
        name: Faker::Space.galaxy,
        city: Faker::Address.city,
        state: Faker::Address.state,
        category: category
      )
      puts "created #{i} parks"
    end
  end
end

Seed.begin
