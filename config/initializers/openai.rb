Ruby::OpenAI.configure do |config|
  config.access_token = OPENAI
  # config.organization_id = ENV.fetch('OPENAI_ORGANIZATION_ID') # Optional.
end
