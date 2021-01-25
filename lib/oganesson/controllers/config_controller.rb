module Organessson
  module Controller
    class ConfigController
      #ConfigController should accept thor tasks as preconditions for the application start
      # - all mandatory fields must be set or the method is not called
      # - all options fields will have a default value or nil, and come last in the list of parameters
      # - config controller state must be set for controller to run
      # - config controller methods will provide a contextual error message when no configuration is set
      # - all methods must be commented for use


      attr_accessor :directory, :state, :configuration

      def initialize(configuration)
        # directory of the configuration file and configuration to load
        @state = { directory: ENV["CONFIGURATION_DIRECTORY"], configuration: configuration}
      end

      def set_configuration(state)
        #
        # set_config will set the state with the configuration information found in the config/config.yml file
        # the default config is loaded but any can be passed in
        # the default directory is always searched for the default configuration
        # any additional directory passed in will be scanned for additional configuration information
        # - additional information will have the parent match a method i.e. add_directory, remove_default, etc
        # - add_directory:
        # -   new_directory: 'data/new_directory'
        # add_directory will search the add_directory hash for any new directories.
        # if any exist it will call File.join(PROJECT_DIRECTORY, new_directory)
        # it will add the new directory to the default_directories list
        # all configurations will be set and update @state.
        # the final state will be called out of ConfiController by get_state
        #
        #
        # load directory configuration details and store in a hash value directories: {directory data}
        #
        # return @state
        #
      end

      def get_state
        @state
      end



    end
  end
end




