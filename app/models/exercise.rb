class Exercise < ActiveRecord::Base
  attr_accessible :description, :name, :tag_list, :today , :image, :remote_image_url, :image_cache
  has_many :taggings
  has_many :tags, through: :taggings
  
  mount_uploader :image, ImageUploader

  scope :today, where(:today => true)
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).exercises
  end
  
  def self.tag_counts
    Tag.select("tags.*, count(taggings.tag_id) as count").
      joins(:taggings).group("taggings.tag_id")
  end
  
  def tag_list
    tags.map(&:name).join(", ")
  end
  
  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end        

end
