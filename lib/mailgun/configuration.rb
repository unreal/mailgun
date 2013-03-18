module Mailgun
  module Configuration
    attr_accessor :api_key,
      :api_version,
      :protocol,
      :mailgun_host,
      :test_mode,
      :domain

    def configure
      yield self
    end
    alias :config :configure
  end
end
