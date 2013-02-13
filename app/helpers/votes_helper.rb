module VotesHelper
  
  def perc(value)
    number_to_percentage(value, precision: 0).chop
  end
  
  def family_friendly(str)
    str.gsub(/fuck/, '****').gsub(/shit/, '****')
  end
  
end
