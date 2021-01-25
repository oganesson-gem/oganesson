# frozen_string_literal: true

module Oganesson
  class Runtime
    class DataHelper
      def self.load_yaml(path,filename)
        #pass in path and filename with extension. I.E. SERVICE_DEFINITION_DIRECTORY, SERVICENAME
        full_path = File.join(path,filename)
        YAML.load(File.read(full_path))
      end

    end
  end
end
