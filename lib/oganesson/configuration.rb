require 'oganesson/helper_modules/data_helper'

module Oganesson
  module Configuration
    class Configuration
      include Oganesson::DataHelper
      #configuration will set the project directory variables
      # configuration will set the project enironment variables
      # the system will be fed the location of the OgFile.yml
      # the system will select the profile passed in
      #

      class Project

        # representation of the project using oganesson
        # will create a list of constants each representing a directory
        # will hold project configuration data

        attr_accessor :directories

        def initialize(directories)
          directories.each_pair do |k, v|
            @directories[k.to_sym] =  v
          end
        end
      end


      attr_accessor :location, :profile, :project

      def initialize(location, profile = 'default')
        @location = load_yaml(location, 'OgFile.yml')
        @profile = {
          directories: @location["#{profile}_directories".upcase],
          variables: @location["#{profile}_variables".upcase]
        }
        setup_environment_variables
        setup_project_directories
      end

      def setup_environment_variables
        # takes the variables in @profile["variables"] and dynamically
        # creates an environemnt variable for each item in the collection
        @profile[:variables].each do |k, v|
          ENV["#{k}"] = v
        end
      end

      def setup_project_directories
        # takes the directories in @profile["directories"] and dynamically
        # creates an hash key value pair for each item in the collection
        @project = Project.new(@profile[:directories])
      end



    end
  end
end
