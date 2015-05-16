class profile < ActiveRecord::Base

  belongs_to user

  validates :user_name, uniqueness: true

end
