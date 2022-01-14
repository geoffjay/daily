if Rails.env.development?
  admin = User.create(email: 'admin@daily.com', password: 'password')
  Activity.create(
    name: 'Eat',
    description: 'Do this or bad things will happen.',
    start_date: DateTime.current.beginning_of_day,
    end_date: DateTime.current.midnight + 364.days,
    user: admin,
  )
end
