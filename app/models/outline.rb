class Outline < ActiveRecord::Base

    belongs_to :users
    belongs_to :lectures
    has_many :orders


    has_attached_file :image,
    :storage => :s3,
    :url => ":s3_domain_url",
    :s3_credentials => {
    :bucket => ENV['S3_BUCKET_NAME'],
    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  },
    :path => "/:class/:attachment/:id_partition/:style/:filename"

    validates_attachment :image, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

  end
