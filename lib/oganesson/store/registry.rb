module Oganesson
  module Store
    class Registry
      attr_accessor :active_services

      def initialize
        @active_services = {}
      end

      def add_service(service_name, service_model)
        @active_services["#{service_name}"] = service_model
      end

      def delete_service(service_name)
        @active_services.delete("#{service_name}")
      end

    end
  end
end