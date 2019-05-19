FactoryBot.define do
  factory :iris do
    sequence(:sepal_length) { |n| n * 1.5 }
    sequence(:sepal_width) { |n| n * 1.5 }
    sequence(:petal_length) { |n| n * 1.5 }
    sequence(:petal_width) { |n| n * 1.5 }
    class_type { Faker::Creature::Animal.name }
  end
end
