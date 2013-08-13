class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title, null: false
      t.integer :company_id, null: false
      t.integer :job_score, null: false
      t.timestamps
    end
  end
end
