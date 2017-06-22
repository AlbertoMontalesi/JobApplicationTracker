class AddPinToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :pin, :boolean, default: false
  end
end
