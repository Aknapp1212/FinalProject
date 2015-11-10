class ChangeUniversitiesTable < ActiveRecord::Migration
  def change
    remove_column :universities, :user_id
  end
end
