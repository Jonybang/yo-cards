class Picture < Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # validates_attachment :image,
  #                      :presence => true,
  #                      :size => { :in => 20..2000.kilobytes },
  #                      :content_type => { :content_type => [ 'image/jpeg', 'image/png' ] }

  attr_accessor :delete_image
  before_validation { self.image.clear if self.delete_image == '1' }

  belongs_to :theme
end