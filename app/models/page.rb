class Page < ActiveRecord::Base
  
  def title_for_url
    self.title.gsub(" ", '-')
  end
end
