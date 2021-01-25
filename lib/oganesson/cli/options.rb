# frozen_string_literal: true

module Oganesson
  module Cli
    class Options

      def initialize(out_stream = STDOUT, error_stream = STDERR, options = {})
        @out_stream   = out_stream
        @error_stream = error_stream

        @default_profile = options[:default_profile]
        @profiles = options[:profiles] || []
        @overridden_paths = []
        @options = default_options.merge(options)
        @profile_loader = options[:profile_loader]
        @options[:skip_profile_information] = options[:skip_profile_information]

        @disable_profile_loading = nil
      end
    end
  end


end