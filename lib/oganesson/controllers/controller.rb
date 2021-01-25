require 'organesson/helper_modules/services'
require 'organesson/helper_modules/data_helper'
require 'config_controller'

module Organesson
  module Controller
    class Controller
      include Services
      include DataHelper
      attr_accessor :state, :request

      def initialize(service, request_type, data_profile, config)
        # controller_config
        # controller initial state will be set by calling the get state method in the controller
        # config will determine if return data is masked, store any control permissions
        # service is the name of the desired service to call
        # request_type is the type of request being made. i.e. post, get, put, etc
        # data_profile will be the data for the scenario

        controller_config = ConfigController.new(config)
        @state = { config: controller_config.get_state, control: 'not set' }
        @request = { service: service           ,
                     request_type: request_type ,
                     data_profile: set_data_profile(data_profile)
        }
      end

      def set_data_profile(new_profile)
        #create httparty @options to include with the request
        # this will be the request headers, header values, body parameters, body values
        #
        state[:config][:directories][:service_definition_directory]

        request["data_profile"] = new_profile
      end

      def make_request
        #
        # this will call the correct service from the services.rb helper module
        # this will use all information from state to complete the request
        # this will return the response from the provided service
        # this will handle errors involving empty state, missing data, or uncaught exceptions
        #
        # state should provide the service defined as the root-endpoint + the service path
        # state should provide the type or request as get, put, post, etc
        # state should provide the data to use in the request including all headers, header values, fields, and field values
        # make request will return the service response
        #

      end




    end
  end
end



