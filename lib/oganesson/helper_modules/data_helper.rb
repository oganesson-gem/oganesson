require 'erb'

module Oganesson
  module DataHelper

    def load_yaml(path,filename)
      #pass in path and filename with extension. I.E. SERVICE_DEFINITION_DIRECTORY, SERVICENAME
      full_path = File.join(path,filename)
      # YAML.load(File.read(full_path))
      YAML.load(ERB.new(File.read(full_path)).result)

    end


  end
end

