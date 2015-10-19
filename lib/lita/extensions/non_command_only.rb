module Lita
  module Extensions
    class NonCommandOnly
      def self.call(payload)
        if payload[:route].extensions[:non_command_only] and payload[:message].command?
          return false
        else
          return true
        end
      end
      Lita.register_hook(:validate_route, NonCommandOnly)
    end
  end
end
