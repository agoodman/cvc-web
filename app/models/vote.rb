class Vote < ActiveRecord::Base
  
  belongs_to :user
  
  attr_accessible :chicken, :cobra, :reason, :user_id
  
  scope :chicken, where(chicken: true)
  scope :cobra, where(cobra: true)
  scope :valid, where('user_id is not null')
  
end
