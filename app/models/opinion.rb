class Opinion < ActiveRecord::Base
  

  def name_date
    "#{name} - #{created_at.strftime("%Y-%m-%d")}"
  end

end
