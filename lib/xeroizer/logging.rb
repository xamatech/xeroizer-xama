module Xeroizer
  module Logging
    class DevNullLog; def self.info(what); end; end
    class StdOutLog; def self.info(what); puts what; end; end

# REMOVED
#    Log = DevNullLog

# ADDED
    Log = StdOutLog
#
  end
end
