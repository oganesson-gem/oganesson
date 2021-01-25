# frozen_string_literal: true
require 'oganesson/error_handling/service_model_error'

module Oganesson
  class Runtime
    class ServiceModel
      extend ServiceModelError
      include Oganesson::Store

      attr_accesor :state

      def initialize(service_name)
        # retrieve the information about the model
        @state["model_data"] = DataHelper.load_yaml(File.join(SERVICE_DEFINITION_DIRECTORY,"#{service_name}"),"#{service_name}_definition.yml")
        generate_model(service_name.downcase!)
      end

      def generate_model(service_name)
        begin

          # service model path  i.e. 'api/1.0/getsomething'
          model_path = @state["model_data"]["PATH"]
          # service model headers i.e. {header-name: 'required', header2-name: 'not required'}
          model_headers = @state["model_data"]["HEADERS"]
          # service model body i.e. {field: 'required', field2: 'not required'}
          model_body = @state["model_data"]["BODY"]

          # a complete service model
          service_model = {model_path: model_path, model_headers: model_headers, model_body: model_body}
          # creates a service store object and overwrites the ServiceModel @state
          @state = ServiceStore.new(service_name, service_model)

        rescue SERVICE_MODEL_ERROR => e
          e.message
        end
      end


    end
  end
end
