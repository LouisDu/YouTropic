Place.destroy_all
User.destroy_all
Category.destroy_all

User.create!(email: 'nico@hotmail.com', password: 'niconico')
User.create!(email: 'louis@hotmail.com', password: 'louislouis')
User.create!(email: 'augustin@hotmail.com', password: 'augustin')
User.create!(email: 'juliette@hotmail.com', password: 'juliette')

Category.create!(name: "Air")
Category.create!(name: "Terre")
Category.create!(name: "Mer")

@category = Category.all
@user = User.all

4.times do
  Place.create!(
    user: @user.sample,
    name: Faker::Name.last_name,
    capacity: (1..10).to_a.sample,
    price: Faker::Number.number(3),
    street: '12 rue faidherbe, Lille',
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    description: Faker::Name.title,
    category: @category.sample,
    photo: Faker::Avatar.image,
    remote_photo_url: 'http://unsplash.it/800?random'
  )
end

4.times do
  Place.create!(
    user: @user.sample,
    name: Faker::Name.last_name,
    capacity: (1..10).to_a.sample,
    price: Faker::Number.number(3),
    street: 'rue faidherbe Paris',
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    description: Faker::Name.title,
    category: @category.sample,
    photo: Faker::Avatar.image,
    remote_photo_url: 'http://unsplash.it/800/?random'
  )
end

4.times do
  Place.create!(
    user: @user.sample,
    name: Faker::Name.last_name,
    capacity: (1..10).to_a.sample,
    price: Faker::Number.number(3),
    street: 'rue de la gare Marseille',
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    description: Faker::Name.title,
    category: @category.sample,
    remote_photo_url: 'http://unsplash.it/800?random'
  )
end
