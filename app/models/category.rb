class Category < ActiveRecord::Base
  has_many :classifieds

  def self.find_or_create_by_name(name)
    where(name: name.capitalize).first_or_create
  end

  def recent_classifieds
    classifieds.limit(3)
  end
end
