class Airport
  def initialize(capacity)
    @landed_planes = []
    @DEFAULT_CAPACITY = 10
    capacity = 10
  end

  def land(plane) 
    raise error if @landed_planes.length >= @DEFAULT_CAPACITY
  
    @landed_planes << plane
  end

  def take_off(plane)
  end
end
