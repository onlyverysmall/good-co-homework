class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :company_id
      t.integer :strength_score

      t.timestamps
    end
  end
end
