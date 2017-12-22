class AnalyzersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    image_io  = ImageIO.new(image_param).setup
    response = ImageAnalyzer.new(image_io).detect_labels

    output = JSON.parse(response.body)
    text = output["description"]["captions"].first["text"]
    render json: text.to_json
  end

  private

  def image_param
    params.require(:image)
  end
end
