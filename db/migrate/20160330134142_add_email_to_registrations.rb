class AddEmailToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :email, :string
  end
end
