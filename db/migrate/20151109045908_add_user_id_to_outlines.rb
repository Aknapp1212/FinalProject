class AddUserIdToOutlines < ActiveRecord::Migration
  def change
    add_reference :outlines, :user, index: true, foreign_key: true
  end
end
