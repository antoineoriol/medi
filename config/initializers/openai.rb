Ruby::OpenAI.configure do |config|
  config.access_token = ENV["OPENAI_KEY"]
  # config.organization_id = ENV.fetch('OPENAI_ORGANIZATION_ID') # Optional.
end
