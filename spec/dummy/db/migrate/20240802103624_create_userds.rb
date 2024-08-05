class CreateUserds < ActiveRecord::Migration[7.1]
  def change
    create_table :userds do |t|

      t.timestamps
    end
  end
end
