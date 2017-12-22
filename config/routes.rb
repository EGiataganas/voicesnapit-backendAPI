Rails.application.routes.draw do
  resource :rekognition, only: [:create]
  resource :analyzer, only: [:create]
end
