class Topic < ApplicationRecord
 validates :user_id, presence:true
 validates :description,presence:true
 validates :image,presence:true

 belongs_to :user
 mount_uploader :image,ImageUploader
 acts_as_taggable_on :skills
 has_many :likes
end
