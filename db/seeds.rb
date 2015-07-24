Category.destroy_all

Category.create(name: 'Sports')
Category.create(name: 'Movies')
Category.create(name: 'Technology')
Category.create(name: 'Science')
Category.create(name: 'Dance')
Category.create(name: 'Music')



User.destroy_all

michael = User.create!(
  first_name: 'Michael',
  last_name: 'Fich',
  email: 'michaeltf@gmail.com',
  password: '1234',
  password_confirmation: '1234'
)

nancy = User.create!(
  first_name: 'Nancy',
  last_name: 'Wood',
  email: 'nancy@wood.com',
  password: '1234',
  password_confirmation: '1234'
)

kevin = User.create!(
  first_name: 'Kevin',
  last_name: 'McLoughlin',
  email: 'kevin@mcloughlin.com',
  password: '1234',
  password_confirmation: '1234'
)

abby = User.create!(
  first_name: 'Abby',
  last_name: 'Greenbloom',
  email: 'abby@greenbloom.com',
  password: '1234',
  password_confirmation: '1234'
)

Project.create!(
  name: 'Kevin',
  description: 'Not nice things to be said. - Abby',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1000000,
  owner: michael
)

Project.create!(
  name: 'Beer',
  description: 'To drink',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 2000,
  owner: abby
)

Project.create!(
  name: 'Abby',
  description: 'Funtimes',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1,
  owner: kevin
)

Project.create!(
  name: 'Kevin',
  description: 'Not nice things to be said. - Abby',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1000000,
  owner: michael
)

Project.create!(
  name: 'Beer',
  description: 'To drink',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 2000,
  owner: abby
)

Project.create!(
  name: 'Abby',
  description: 'Funtimes',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1,
  owner: kevin
)

Project.create!(
  name: 'Kevin',
  description: 'Not nice things to be said. - Abby',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1000000,
  owner: michael
)

Project.create!(
  name: 'Beer',
  description: 'To drink',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 2000,
  owner: abby
)

Project.create!(
  name: 'Abby',
  description: 'Funtimes',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1,
  owner: kevin
)

Project.create!(
  name: 'Kevin',
  description: 'Not nice things to be said. - Abby',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1000000,
  owner: michael
)

Project.create!(
  name: 'Beer',
  description: 'To drink',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 2000,
  owner: abby
)

Project.create!(
  name: 'Abby',
  description: 'Funtimes',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1,
  owner: kevin
)

Project.create!(
  name: 'Kevin',
  description: 'Not nice things to be said. - Abby',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1000000,
  owner: michael
)

Project.create!(
  name: 'Beer',
  description: 'To drink',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 2000,
  owner: abby
)

Project.create!(
  name: 'Abby',
  description: 'Funtimes',
  start_date: DateTime.now.beginning_of_day + 1.day,
  end_date: DateTime.now + 15.days,
  goal: 1,
  owner: kevin
)