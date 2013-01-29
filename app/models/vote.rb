class Vote < ActiveRecord::Base
  
  belongs_to :user
  
  attr_accessible :chicken, :cobra, :reason, :user_id
  
  scope :chicken, where(chicken: true)
  scope :cobra, where(cobra: true)
  scope :has_user, where('user_id is not null')
  scope :has_reason, where('reason is not null')
  scope :valid, has_user.has_reason
  
end
