class Opinion < ActiveRecord::Base
  

  def name_with_date
    "#{name} - #{created_at.strftime("%Y-%m-%d")}"
  end

end
