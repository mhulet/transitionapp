class AddHubRefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :hub, foreign_key: true
  end
end
