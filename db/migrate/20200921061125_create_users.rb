class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :gender
      t.string :phone
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
