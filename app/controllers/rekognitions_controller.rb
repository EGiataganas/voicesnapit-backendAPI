class RekognitionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    imageIO  = ImageIO.new(image_param).setup
    response = ImageRekognition.new(imageIO).detect_labels

    @labels = response.labels

    @output = @labels.map do |label|
      "#{label.name}" if label.confidence.to_i > 80
    end

    render json: @output.compact.join(", ").to_json
  end

  def image_param
    params.require(:image)
  end
end
