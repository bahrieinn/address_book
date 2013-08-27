require 'faker'

@genders = ["male", "female"]
@relation = ["friend", "relative", "coworker"]

10.times do 
  Contact.create!(
    :first_name => Faker::Name.first_name, 
    :last_name => Faker::Name.last_name,
    :email => Faker::Internet.email,
    :gender => @genders.sample,
    :relation => @relation.sample
  )
end
