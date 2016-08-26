class AddUserIdToQso < ActiveRecord::Migration
  def change
    add_column :qsos, :user_id, :integer
  end
end
