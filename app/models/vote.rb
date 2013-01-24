class Vote < ActiveRecord::Base
  
  belongs_to :user
  
  attr_accessible :chicken, :cobra, :reason
  
end
