class University < ActiveRecord::Base
  belongs_to :user
  has_many :lectures
end
