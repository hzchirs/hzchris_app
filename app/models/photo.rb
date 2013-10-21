class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>",
                                         :small => "150x150",
                                         :thumb => "100x100>" }
end
