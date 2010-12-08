class UploadedFile < ActiveRecord::Base
  belongs_to :user
  has_attached_file :asset, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  validates_presence_of :asset
end
