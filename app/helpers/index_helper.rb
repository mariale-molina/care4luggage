module IndexHelper
  
  def format_date(date)
    date.strftime("%Y-%m-%d")
  end

  def resource_name
  :user
  end

  def resource
  @resource ||= User.new
  end

  def devise_mapping
  @devise_mapping ||= Devise.mappings[:user]
  end
    
end
