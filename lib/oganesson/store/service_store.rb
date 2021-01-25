# frozen_string_literal: true

module Oganesson
  module Store
    class ServiceStore

      attr_accessor :service_name, :service_model, :store

      def initialize(service_name, service_model, store = nil)
        # name of the service
        @service_name = service_name
        # model of the service i.e. {header1: 'required', header2: 'not required' , field1: 'required', field2: 'not required'}
        @service_model = service_model
        # service data to store
        @store = store
      end
    end
  end
end
