class ChangeUserTable < ActiveRecord::Migration
  def change
    change_column :users, :university_id,  :integer
  end
end
