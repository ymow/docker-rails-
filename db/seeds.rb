require 'faker'

Author.delete_all
Article.delete_all

10.times do
  Author.create(name: Faker::Book.unique.author)
end

50.times do
  Article.create({
                   title: Faker::Book.title,
                   body: Faker::Lorem.paragraphs(number: rand(5..7)),
                   author: Author.limit(1).order('RANDOM()').first # sql random
                 })
end