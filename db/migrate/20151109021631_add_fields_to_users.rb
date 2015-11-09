class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :university_id, :string
    add_column :users, :class_year, :string
    add_column :users, :law_review, :string
  end
end
