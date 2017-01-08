class Airport

  CAPACITY = 10
  def initialize(capacity = CAPACITY)
    @planes = []
    @capacity = capacity
  end

  attr_accessor :planes
  attr_accessor :capacity

  def land(plane)
    message = "The airport is full"
    raise message if @planes.length == @capacity
    @planes << plane
  end

  def takeoff(plane)
    message = "There is no such plane in the airport"
    raise message if !@planes.include?(plane)
    @planes.delete(plane)
  end
end
