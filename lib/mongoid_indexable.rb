module Mongoid::Indexes
  module ClassMethods
    alias_method :create_fulltext_indexes_hook, :create_indexes
       
    def create_indexes
      create_fulltext_indexes if respond_to?(:create_fulltext_indexes)
      create_fulltext_indexes_hook
    end
  end
end
