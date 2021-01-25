# frozen_string_literal: true
require 'oganesson/error_handling/service_model_error'

module Oganesson
  class Runtime
    class ServiceModel
      extend ServiceModelError
      include Oganesson::Store

      attr_accesor :state

      def initialize(service_name)
        generate_model(service_name.downcase!)
      end

      def generate_model(service_name)
        begin
          model_data = DataHelper.load_yaml(File.join(SERVICE_DEFINITION_DIRECTORY,"#{service_name}"), "#{service_name}_definition.yml")

          model_path = model_data["PATH"]
          model_headers = model_data["HEADERS"]
          model_body = model_data["BODY"]

          service_model = {model_path: model_path, model_headers: model_headers, model_body: model_body}
          @state = ServiceStore.new(service_name, service_model)

        rescue SERVICE_MODEL_ERROR => e
          e.message
        end
      end


    end
  end
end
