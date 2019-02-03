class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.integer :price
      t.integer :common_expenses
      t.integer :total_price
      t.integer :built_square_meters
      t.integer :terrace_square_meters
      t.integer :bedroom_count
      t.integer :bathroom_count
      t.string :near
      t.string :comment
      t.string :contact_status
      t.string :link

      t.timestamps
    end
  end
end
