# frozen_string_literal: true

require_relative "oganesson/version"

module Oganesson
  class Error < StandardError; end
  class << self
    attr_accessor :wants_to_quit, :use_legacy_autoloader

    def self.hi
      puts "hello world!"
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
