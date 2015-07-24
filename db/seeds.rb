Category.destroy_all

Category.create!(name: 'Sports')
Category.create!(name: 'Movies')
Category.create!(name: 'Technology')
Category.create!(name: 'Science')
Category.create!(name: 'Dance')
Category.create!(name: 'Music')

User.destroy_all

User.create!(
  first_name: 'Michael',
  last_name: 'Fich',
  email: 'michaeltf@gmail.com',
  password: '1234',
  password_confirmation: '1234'
)

User.create!(
  first_name: 'Nancy',
  last_name: 'Wood',
  email: 'nancy@wood.com',
  password: '1234',
  password_confirmation: '1234'
)

User.create!(
  first_name: 'Kevin',
  last_name: 'McLoughlin',
  email: 'kevin@mcloughlin.com',
  password: '1234',
  password_confirmation: '1234'
)

User.create!(
  first_name: 'Abby',
  last_name: 'Greenbloom',
  email: 'abby@greenbloom.com',
  password: '1234',
  password_confirmation: '1234'
)
