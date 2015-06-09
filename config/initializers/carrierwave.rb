CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => ENV['AKIAISNFLBWFST65CPQQ'],
      :aws_secret_access_key => ENV['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'],
      :region => ENV['us-east-1']
    }
  if Rails.env.test? || Rails.env.development?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  else
    config.storage = :fog
  end
 
  # To let CarrierWave work on heroku
  config.cache_dir = "#{Rails.root}/tmp/uploads" 
  config.fog_directory = ENV['dodgerredhead']
end
 