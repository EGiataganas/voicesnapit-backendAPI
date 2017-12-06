require 'rails_helper'

RSpec.describe ImageRekognition, type: :model do
  it '#humanise' do
    rekognition = ImageRekognition.new(ImageIO.new('abc'))
    labels = [double(:label, name: 'A', confidence: 2),
              double(:label, name: 'B', confidence: 9),
              double(:label, name: 'C', confidence: 3)]
    response = double(:response, labels: labels)
    allow(rekognition).to receive(:response).and_return(response)
  end
end
