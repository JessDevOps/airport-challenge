describe 'user stories' do
# As an air traffic controller
# So I can get passengers to a destination
# I want to instruct a plane to land at an airport
# airport <------land------> plane
#
  it 'so that plane will land at airport instruct plane to land' do 
    plane = Plane.new
    airport = Airport.new(10)
    expect { airport.land(plane).not_to raise_error }
  end
# As an air traffic controller
# So I can get passengers on the way to their destination
# I want to instruct a plane to take off from an airport and confirm
# that it is no longer in the airport
# airport <------take_off------> plane
# plane <------left?-------> true/false
#
  it 'so that plane will take from airport instruct plane to take off and confirm not in airport' do
    plane = Plane.new
    airport = Airport.new(10)
    expect { airport.land(plane).not_to raise_error }
    expect { plane.left?.to eq true }
  end
#
# As an air traffic controller
# To ensure safety
# I want to prevent landing when the airport is full
# airport <------full?-----> plane
#
  it 'so that plane will not land at airport instruct airport to say it is full' do 
    plane = Plane.new
    airport = Airport.new(10)
    10.times do 
      airport.land(plane)
    end
    expect { airport.land(plane).to raise_error 'Airport is full, cannot land plane' }
  end

# As the system designer
# So that the software can be used for many different airports
# I would like a default airport capacity that can be overridden as appropriate
# airport <------capacity------> a value

  it 'should be able to override airport capacity' do
    airport = Airport.new
    plane = Plane.new
    airport::DEFAULT_CAPACITY.times do
      airport.land(plane)
    end
  end
end   
#
# As an air traffic controller
# To ensure safety
# I want to prevent takeoff when weather is stormy
# plane <-----stormy?------> grounded
#
# As an air traffic controller
# To ensure safety
# I want to prevent landing when weather is stormy
# plane <-----stormy?------> 
