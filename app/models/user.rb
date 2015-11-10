class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :university
  has_many :outlines, dependent: :destroy #not sure about the 'dependend: :destroy part'
  has_many :lectures
  has_many :sales, class_name: "Order", foreign_key: "seller_id"
  has_many :purchases, class_name: "Order", foreign_key: "buyer_id"


  def self.get_universities
    collector = []
    University.find_each do |u|
      collector << [u.name, u.id]
    end
    collector
  end




end
