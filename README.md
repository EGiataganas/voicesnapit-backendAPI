# VoiceSnapIT

VoiceSnapIT is a backend API which integrates two image recognition services [AWS Rekognition](https://aws.amazon.com/rekognition/) and [Microsoft Computer Vision](https://azure.microsoft.com/en-gb/services/cognitive-services/computer-vision/).

| Dependency | Version |
|:-----------|:--------|
| Ruby       | 2.5.1   |
| Rails      | 5.1.4   |
| Postgresql | 0.21    |

## Getting Started

1. Clone the project

  ```
  git@github.com:EGiataganas/voicesnapit-backendAPI.git
  ```

2. Install project's dependencies using bundler.

  ```
  bundle install
  ```

3. Next, migrate the database:

  ```
  rake db:create db:migrate
  ```

4. Run tests

  ```
  rspec
  ```

5. Startup the Server

  ```
  rails server
  ```
