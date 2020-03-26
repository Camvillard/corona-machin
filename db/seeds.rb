# require 'faker'

puts 'Cleaning database...'

Demand.destroy_all
OtherDemand.destroy_all
HomeworkDemand.destroy_all
ErrandDemand.destroy_all
SocialDemand.destroy_all
Item.destroy_all
List.destroy_all
Tag.destroy_all


TAGS = ["urgent", "peut encore attendre un peu", "non urgent"]
STATUS = ["new", "in progress", "finished", "delivered"]
MESSAGE = ["Please deliver at home thanks", "Can you call me every day at 8PM", "Can you pick up this list tonight"]
RECURRENCE = ["ponctuel", "quotidien", "hebdomadaire"]
MATIERE = ["lettres", "sciences", "langues", "histoire/géo", "autre"]


TAGS.each do |tag|
  Tag.create!(name: tag)
end

i = 1
8.times do
  other_need = OtherDemand.create!()

  demand = Demand.new(
    name: Faker::Movies::HarryPotter.character,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    message: MESSAGE.sample,
    title: "title - #{i}",
    need: other_need,
    status: STATUS.sample,
  )
  demand.tag = Tag.all.sample
  demand.save!
  i+=1
end

i = 1
6.times do
  need = SocialDemand.create!(
    recurrence: RECURRENCE.sample
  )
  demand = Demand.new(
    name: Faker::Movies::HarryPotter.character,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    message: MESSAGE.sample,
    title: "title - #{i}",
    need: need,
    status: STATUS.sample,
    )
  demand.tag = Tag.all.sample
  demand.save!
  i+=1
end

i = 1
4.times do
  need = HomeworkDemand.create!(
    recurrence: RECURRENCE.sample,
    matiere: MATIERE.sample
  )
  demand = Demand.new(
    name: Faker::Movies::HarryPotter.character,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    message: MESSAGE.sample,
    title: "title - #{i}",
    need: need,
    status: STATUS.sample,
  )
  demand.tag = Tag.all.sample
  demand.save!
  i+=1
end

i = 1
12.times do
  need = ErrandDemand.create!(
    address: Faker::Address.full_address
  )

  demand = Demand.new(
    name: Faker::Movies::HarryPotter.character,
    phone: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    message: MESSAGE.sample,
    title: "title - #{i}",
    need: need,
    status: STATUS.sample,
  )
  demand.tag = Tag.all.sample
  demand.save!
  i+=1

  list = List.new

  list.errand_demand = need
  list.save!

  Item.create!(
    name: "choufleur",
    detail: "1",
    list: list
    )
  Item.create!(
    name: "patates",
    detail: "2 kg",
    list: list
  )
  Item.create!(
    name: "lait d'amande",
    detail: "2 litres",
    list: list
  )
end

puts 'DB created'
