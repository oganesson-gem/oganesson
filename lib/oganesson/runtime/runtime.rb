# frozen_string_literal: true


require 'oganesson/runtime/create_service'
require 'oganesson/runtime/data_helper'
require 'oganesson/runtime/service_model'
require 'oganesson/runtime/support_code'

module Oganesson
  class Runtime
    include Oganesson::Store
    include Oganesson::Configuration

    attr_accessor :registry, :running_project

    def initialize(config)
      # takes in the config object and assigns it to running project
      @running_project = config.project
      #initialize new registry where services will be registered prior to executing
      @registry = Registry.new
    end
  end
end
