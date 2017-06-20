class AddNotesToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :notes, :text
  end
end
