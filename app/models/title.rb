class Title <ActiveRecord::Base
  has_many :figures
  has_many :landmarks, through: :figures
end
