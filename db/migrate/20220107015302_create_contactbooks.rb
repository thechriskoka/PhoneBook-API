class CreateContactbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :contactbooks do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
