class ChangeUserIdToNullForSubscribe < ActiveRecord::Migration[6.0]
  def change
    change_column :subscriptions, :user_id, :integer, null: true
  end
end
