require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production? || Rails.env.development? # 開発中もs3使う
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'auelu-web'
    config.asset_host = 'https://s3.amazonaws.com/auelu-web'
    config.fog_public = false
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAWRRXXN77NI4VSEEN',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1',
      # path_style: true
    }
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
end