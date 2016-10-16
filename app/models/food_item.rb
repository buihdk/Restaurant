class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :orders, dependent: :destroy

  def image_url_or_default
    if image_url.present?
      image_url
    else
      "http://loremflickr.com/320/240/#{CGI.escape name}"
    end
  end

  def self.by_section(section)
    # SELECT * FROM food_items WHERE food_items.section = "#{section}"
    where(section: section)
  end

  def self.search(search)
    where("name ILIKE ?", "%#{search}%") 
  end

end
