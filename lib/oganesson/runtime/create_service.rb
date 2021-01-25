# frozen_string_literal: true

module Oganesson
  class Runtime
    class CreateService
      # CreateService is a static class to define services

      def self.create_new_service(service_name)
        ServiceModel.new(service_name)
      end

    end
  end
end