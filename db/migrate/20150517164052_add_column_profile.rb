class AddColumnProfile < ActiveRecord::Migration
  def up
    add_column :profiles, :user_id, :integer, null: false
  end

  def down
    remove_column :profiles, :user_id
  end
end
