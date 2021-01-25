# frozen_string_literal: true

module Oganesson
  module LoadPath
    def add_dirs(*dirs)
      dirs.each do |dir|
        $LOAD_PATH.unshift(dir) unless $LOAD_PATH.include?(dir)
      end
    end

    module_function :add_dirs
  end
end

Oganesson::LoadPath.add_dirs('lib')
