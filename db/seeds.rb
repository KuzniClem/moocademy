# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Lesson.destroy_all
Course.destroy_all

5.times do
  course = Course.new
  course.title = Faker::Beer.name
  course.description = Faker::Beer.style
  course.save
end

15.times do
  lesson = Lesson.new
  lesson.title = Faker::Lovecraft.word.capitalize
  lesson.body = Faker::Lovecraft.paragraph
  lesson.course = Course.all.sample
  lesson.save
end
