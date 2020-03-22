require 'faker'

puts 'Cleaning database...'

Need.destroy_all
Type.destroy_all
List.destroy_all
Tag.destroy_all


TYPES = ["grocery", "pharmacy", "talking", "other"]
TAGS = ["urgent", "Peut Attendre", "non urgent"]
STATUS = ["new", "in progress", "finished", "delivered"]
MESSAGE = ["Please deliver at home thanks", "Can you call me every day at 8PM", "Can you pick up this list tonight"]

TYPES.each do |type|
  Type.create(name: type)
end

TAGS.each do |tag|
  Tag.create(name: tag)
end

i = 1
30.times do

need = Need.new(
  address: Faker::Address.full_address,
  name: "need #{i}",
  phone: Faker::PhoneNumber.cell_phone,
  status: STATUS.sample,
  message: MESSAGE.sample,
)

need.type = Type.all.sample
need.tag = Tag.all.sample
need.save!

i+=1

list = List.new
list.need = need
list.save!

end
puts 'DB created'