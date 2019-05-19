class IrisSerializer
  include FastJsonapi::ObjectSerializer
  attributes :sepal_length, :sepal_width, :petal_length, :petal_width,
             :class_type
end
