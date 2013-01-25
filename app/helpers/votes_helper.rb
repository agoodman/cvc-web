module VotesHelper
  
  def perc(value)
    number_to_percentage(value, precision: 0).chop
  end
  
end
