class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :role
      t.integer :salary
      t.string :link
      t.datetime :application_date
      t.datetime :application_closing_date
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.integer :response, default: 0
      t.integer :interview_stage, default: 0
      t.text :description

      t.timestamps
    end
  end
end


