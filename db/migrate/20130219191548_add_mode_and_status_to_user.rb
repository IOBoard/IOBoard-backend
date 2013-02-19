class AddModeAndStatusToUser < ActiveRecord::Migration
  def change
    add_column :users, :status, :string
    add_column :users, :mode, :string
  end
end
