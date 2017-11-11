Rails.application.routes.draw do
  resource :rekognition, only: [:create]
end
