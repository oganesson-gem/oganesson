# frozen_string_literal: true

require_relative "oganesson/version"
require 'yaml'
require 'oganesson/cli/main'
require 'oganesson/runtime/support_code'
require 'oganesson/runtime/runtime'
require 'oganesson/configuration'


module Oganesson
  class << self
    attr_accessor :wants_to_quit, :use_legacy_autoloader, :container

    def start(ogfile_location, profile)

      @container = Runtime.new(Configuration.new(ogfile_location, profile))
      sleep 3
    end

    def logger
      return @log if @log
      @log = Logger.new(STDOUT)
      @log.level = Logger::INFO
      @log
    end

    def logger=(logger)
      @log = logger
    end
  end


end
