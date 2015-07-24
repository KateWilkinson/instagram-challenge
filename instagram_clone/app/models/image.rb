class Image < ActiveRecord::Base

  has_attached_file :picture,
                    :styles => { :medium => "200x200>", :thumb => "100x100>" },
                    :default_url => ""

  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\z/

  belongs_to :user
  validates :name, length: { minimum: 3 }


end
