class ImageIO
  def initialize(image)
    @image = convert_space_to_plus_sign(image)
  end

  def setup
    imageIO.class.class_eval { attr_accessor :original_filename, :content_type }
    imageIO.original_filename = SecureRandom.hex + '.png'
    imageIO.content_type = 'image/png'
    imageIO
  end

  private

  def imageIO
    @imageIO ||= StringIO.new(decode(@image))
  end

  def convert_space_to_plus_sign(image)
    image.tr(' ', '+')
  end

  def decode(image)
    Base64.decode64(image)
  end
end
