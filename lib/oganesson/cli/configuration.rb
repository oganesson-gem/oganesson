# frozen_string_literal: true
require 'oganesson/cli/options'
require 'oganesson'

module Oganesson
  module Cli
    class Configuration
      attr_reader :out_stream

      def initialize(out_stream = STDOUT, error_stream = STDERR)
        @out_stream   = out_stream
        @error_stream = error_stream
        @options = Options.new(@out_stream, @error_stream, default_profile: 'default')
      end
    end
  end
end