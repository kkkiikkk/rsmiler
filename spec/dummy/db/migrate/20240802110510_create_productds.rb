class CreateProductds < ActiveRecord::Migration[7.1]
  def change
    create_table :productds do |t|

      t.timestamps
    end
  end
end
