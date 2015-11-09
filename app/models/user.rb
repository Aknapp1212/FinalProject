class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :university
  has_many :outlines
  has_many :lectures

  def self.get_universities
    collector = []
    University.find_each do |u|
      collector << [u.name, u.id]
    end
    collector
  end


end
