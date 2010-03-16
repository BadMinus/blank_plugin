require "mongo_mapper"

module MongoMapper
  module Plugins
    module BlankPlugin
      def self.included(model)
          model.plugin BlankPlugin
      end
      
      
      module ClassMethods
        def foo_method
          MongoMapper.foo_method
        end
      end

      module InstanceMethods
        def foo_method
          self.class.foo_method
        end
      end
    end
  end
end

MongoMapper::Document.append_inclusions(BlankPlugin)