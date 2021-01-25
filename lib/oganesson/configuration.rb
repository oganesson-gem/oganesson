require 'oganesson/runtime/data_helper'

module Oganesson
  module Configuration
    class Configuration
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
          @directories = directories.each_pair do |k, v|
            const_set(k.to_sym, v)
          end
        end
      end


      attr_accessor :location, :profile, :project

      def initialize(location, profile = 'default')
        @location = DataHelper.load_yaml(location, 'OgFile.yml')
        @profile = {
          directories: @location["#{profile}_directories".upcase],
          variables: @location["#{profile}_variables".upcase]
        }

      end

      def setup_environment_variables
        # takes the variables in @profile["variables"] and dynamically
        # creates an environemnt variable for each item in the collection
        @profile["variables"].each_pair do |k, v|
          ENV["#{k}"] = v
        end
      end

      def setup_project_directories
        # takes the directories in @profile["directories"] and dynamically
        # creates an constant for each item in the collection
        @project = Project.new(@profile["directories"])
      end



    end
  end
end
