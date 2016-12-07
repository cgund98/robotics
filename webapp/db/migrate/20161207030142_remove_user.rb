class RemoveUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :user, :string
  end
end
