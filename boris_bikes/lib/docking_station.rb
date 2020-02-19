class DockingStation
  attr_reader :DEFAULT_CAPACITY, :bike
  def initialize
    @bike = 0
    @DEFAULT_CAPACITY = 20
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
    if @bike == @DEFAULT_CAPACITY
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
