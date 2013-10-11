class Sample < ActiveRecord::Base
  has_secure_password
  before_save { email.downcase! }
  validate :name, presence: true, length: { maximum: 50 }
end
