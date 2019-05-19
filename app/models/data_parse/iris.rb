class DataParse::Iris
  attr_reader :sepal_length, :sepal_width, :petal_length, :petal_width,
              :class_type

  def initialize(raw_iris_data)
    @sepal_length = raw_iris_data[0].to_f
    @sepal_width = raw_iris_data[1].to_f
    @petal_length = raw_iris_data[2].to_f
    @petal_width = raw_iris_data[3].to_f
    @class_type = raw_iris_data[4]
  end
end
