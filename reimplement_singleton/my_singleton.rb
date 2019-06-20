module MySingleton
  def self.included(base)
    base.extend ClassMethods
    base.private_class_method :new, :allocate
  end

  module ClassMethods
    def instance
      @instance ||= new
    end
  end


  def clone
    raise TypeError
  end

  def dup
    raise TypeError
  end
end
