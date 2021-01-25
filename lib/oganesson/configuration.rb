module Organesson
  module Configuration
    class Configuration


      attr_accessor :location, :profile

      def initialize(location, profile)
        @location = location
        @profile = profile
      end

      def setup_environment_variables

      end
    end
  end
end
