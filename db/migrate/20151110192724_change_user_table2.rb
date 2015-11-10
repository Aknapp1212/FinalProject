class ChangeUserTable2 < ActiveRecord::Migration
  def change
    change_column :users, :law_review, :boolean
  end
end
