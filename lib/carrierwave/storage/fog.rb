CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAI4UNLPPT4LFXGMSA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
    host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'yelpdemo-kongou'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end
