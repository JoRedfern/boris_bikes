require "docking_station"

describe DockingStation do
  it "responds to release_bike" do
    expect(subject).to respond_to :release_bike
  end
  it "releases working bike" do
    station = DockingStation.new
    bike = Bike.new
    station.dock
    expect(station.release_bike).to eq(0)
  end
  it "docks bike" do
    bike = Bike.new
    expect(subject.dock).to eq(1)
  end
  it "returns docked bikes" do
    bike = Bike.new
    expect(subject.dock).to eq(1)
  end
  it "doesn't release bike if no bikes" do
    station = DockingStation.new
    expect{station.release_bike}.to raise_error("There are no bikes available")
  end
  it "doesn't accept bike if full" do
    station = DockingStation.new
    station.capacity.times {station.dock}
    expect{station.dock}.to raise_error("This docking station is full")
  end
  it "has a default capacity" do
    station = DockingStation.new
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end
