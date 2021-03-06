require 'aws-sdk'

class ImageRekognition
  attr_accessor :imageIO, :client, :response

  def initialize(imageIO)
    @client = Aws::Rekognition::Client.new
    @imageIO = imageIO
    @response = nil
  end

  def detect_labels
    @response = client.detect_labels(
      image: { bytes: imageIO }
    )
  end
end
