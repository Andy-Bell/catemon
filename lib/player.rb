class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def deduct(value)
    @hp -= value
  end
end
