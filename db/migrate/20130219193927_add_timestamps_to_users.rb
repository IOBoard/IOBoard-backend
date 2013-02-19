class AddTimestampsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :status_updated_at, :datetime
    add_column :users, :mode_updated_at, :datetime
  end
end
