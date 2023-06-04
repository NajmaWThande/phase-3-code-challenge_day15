puts "🌱 Seeding data..."
# create users
50.times do
  user = User.create(
    name: Faker::Name.name
  )
end
# run a loop 50 times
50.times do
    # create a game with random data
    product = Product.create(
      name: Faker::Commerce.product_name,
      price: rand(0..60), # random number between 0 and 60
    )
  
    # # create between 1 and 5 reviews for each product
    users = User.all
    products = Product.all
    rand(1..5).times do
      user = users.sample
      product = products.sample
      Review.create(
        user: user,
        product_id: product.id,
        star_rating: rand(1..5),
        comment: Faker::Lorem.sentence         
      )
    end
  end


puts "🌱 Done seeding!"