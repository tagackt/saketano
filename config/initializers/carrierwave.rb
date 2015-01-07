CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAJZ3D4U7JMXOJ2KJA',
      :aws_secret_access_key  => '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',
      :region                 => 'ap-northeast-1'
  }

  config.fog_directory = 'saketano-production' if Rails.env.production?
  config.fog_directory = 'saketano-staging' if Rails.env.staging?
  config.fog_directory = 'saketano-development' if Rails.env.development?

end