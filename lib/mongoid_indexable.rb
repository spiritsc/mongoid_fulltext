module Mongoid::Indexes
  module ClassMethods
    def create_indexes
      super
      create_fulltext_indexes
    end
  end
end
