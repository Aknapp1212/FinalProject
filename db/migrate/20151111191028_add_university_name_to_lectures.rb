class AddUniversityNameToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :university_name, :string
    add_reference :lectures, :university, index: true, foreign_key: true
  end
end
