require 'rails_helper'

RSpec.describe Iris, type: :model do
  describe 'validations' do
    it {should validate_presence_of :sepal_length}
    it {should validate_presence_of :sepal_width}
    it {should validate_presence_of :petal_length}
    it {should validate_presence_of :petal_width}
    it {should validate_presence_of :class_type}
  end
end
