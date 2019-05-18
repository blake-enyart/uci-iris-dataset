class CreateIris < ActiveRecord::Migration[5.2]
  def change
    create_table :iris do |t|
      t.float :sepal_length
      t.float :sepal_width
      t.float :petal_length
      t.float :petal_width
      t.string :class_type

      t.timestamps
    end
  end
end
