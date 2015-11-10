class Lecture < ActiveRecord::Base
  belongs_to :user
  belongs_to :university
  has_many :outlines


  def self.get_lectures
    collection = []
    Lecture.find_each do |u|
      collection << [u.name, u.id]
    end
    collection
  end

end
