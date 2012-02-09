module FixerExtend
  def self.included(klass)
    klass.extend(ClassMethods)
    klass.init
  end
  module ClassMethods
    def init
      self.cattr_accessor :manager_class
      self.cattr_accessor :list_cols,:edit_cols,:new_cols
      self.init_cols
      self.manager_class = self
    end
    
    def init_cols
      self.list_cols = []
      self.new_cols = []      
      for col in content_columns
        new_cols << col.name
      end
      self.edit_cols  = new_cols.dup          
    end
    
  end
end