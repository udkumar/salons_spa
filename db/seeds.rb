# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
      :email                 => "u@test.com",
      :password              => "123456",
      :password_confirmation => "123456"
  )
user.save!

salon = Salon.new(
            :salon_name => "xray",
            :gstn => "23AAPCA4771N1Z6",
            :pan => "bompk5141k",
            :opening_time => "8AM",
            :closing_time => "9PM",
            :user_id => user.id
      )
salon.save!