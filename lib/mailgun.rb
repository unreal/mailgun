require "rest-client"
require "json"
require "multimap"

require "mailgun/mailgun_error"
require "mailgun/base"
require "mailgun/configuration"
require "mailgun/route"
require "mailgun/mailbox"
require "mailgun/bounce"
require "mailgun/unsubscribe"
require "mailgun/complaint"
require "mailgun/log"
require "mailgun/list"
require "mailgun/list/member"

#require "startup"

#def Mailgun(options={})
#  options[:api_key] = Mailgun.api_key if Mailgun.api_key
#  Mailgun::Base.new(options)
#end


module Mailgun
  extend Configuration
  class << self

    # Alias for Mailgun::Base.new
    #
    # @ return [Mailgun::Base]
    def new(options={})
      Mailgun::Base.new(options)
    end
  end
end

def Mailgun(options={})
  Kernel.warn "[DEPRECATION] `Mailgun` is now deprecated. Please use `Mailgun.new` instead."

  options[:api_key] = Mailgun.api_key if Mailgun.api_key
  Mailgun::Base.new(options)
end
