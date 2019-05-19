class Iris < ApplicationRecord
  validates_presence_of :sepal_width, :sepal_length, :petal_length, :petal_width,
                        :class_type
end
