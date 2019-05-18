FactoryBot.define do
  factory :iri, class: 'Iris' do
    sepal_length { 1.5 }
    sepal_width { 1.5 }
    petal_length { 1.5 }
    petal_width { 1.5 }
    class_type { "MyString" }
  end
end
