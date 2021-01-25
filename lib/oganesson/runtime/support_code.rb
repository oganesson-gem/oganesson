# # frozen_string_literal: true

require 'oganesson/runtime/service_model'
require 'oganesson/runtime/data_helper'


module Oganesson
  class Runtime
    include Oganesson::Store

    attr_accessor :registry

    class SupportCode

    end

    def initialize
      #initialize new registry where services will be registered prior to executing
      @registry = Registry.new
    end
  end
end