class Image < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, url: "/tmp/:attachment/:id/:style_:filename"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
