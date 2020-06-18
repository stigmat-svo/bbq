class ChangeUserIdForPhotos < ActiveRecord::Migration[6.0]
  def change
    change_column :photos, :user_id, :integer, null: true
  end
end
