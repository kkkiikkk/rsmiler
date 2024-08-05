class CreateSdsas < ActiveRecord::Migration[7.1]
  def change
    create_table :sdsas do |t|

      t.timestamps
    end
  end
end
