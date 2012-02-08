module FixerExtend
  def self.included(klass)
    klass.send(:cattr_accessor, :list_cols)
    klass.send(:cattr_accessor, :edit_cols)
    klass.send(:cattr_accessor, :new_cols)
    klass.list_cols = []
    klass.edit_cols = []
    klass.new_cols = []
  end

end