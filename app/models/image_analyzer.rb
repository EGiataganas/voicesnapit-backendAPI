class ImageAnalyzer
  attr_accessor :image_io, :client, :response

  def initialize(image_io)
    @client = MicrosoftComputerVision::Client.new(subscription_key,api_base_url)
    @new_image = Image.create(image: image_io)
    @response = nil
  end

  def detect_labels
    @response = client.describe(@new_image.image.path, options)
  end

  private

  def api_base_url
    ENV.fetch('API_BASE_URL')
  end

  def options
    {
      max_candidates: '1'
    }
  end

  def subscription_key
    ENV.fetch('SUBSCRIPTION_KEY')
  end
end
