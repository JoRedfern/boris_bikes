class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bike
  attr_accessor :capacity
  def initialize(capacity = DEFAULT_CAPACITY)
    @bike = 0
    @capacity = capacity
  end
  def release_bike
    if empty?
      raise "There are no bikes available"
    end
    @bike -=1
  end

  def dock
    if full?
      raise "This docking station is full"
    end
    @bike += 1
  end

private
  def full?
    if @bike == capacity
      return true
    end
      return false
  end
  def empty?
    if @bike == 0
      return true
    end
    return false
  end
end

class Bike
  def working?
    true
  end
end
