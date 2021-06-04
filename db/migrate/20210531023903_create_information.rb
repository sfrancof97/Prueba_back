class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.text :array, array: true
      t.timestamps
    end
  end
end
