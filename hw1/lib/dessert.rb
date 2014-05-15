class Dessert
    attr_accessor :name, :calories
    
    def initialize(name, calories)
    @name = name
    @calories = calories
    
    end
  def healthy?
    return true if calories < 200
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
    attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = @flavor + " jelly bean"
  end
  
  def delicious?
    return false if @flavor == "licorice"
    super
  end
end
