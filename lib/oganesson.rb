# frozen_string_literal: true

require_relative "oganesson/version"
require 'yaml'
require 'oganesson/cli/main'


module Oganesson
  class << self
    attr_accessor :wants_to_quit, :use_legacy_autoloader

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
