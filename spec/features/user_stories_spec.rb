describe 'user stories' do
# As an air traffic controller
# So I can get passengers to a destination
# I want to instruct a plane to land at an airport
# airport <------land------> plane

  it 'so that plane will land at airport instruct plane to land' do 
    plane = Plane.new
    airport = Airport.new
    expect { airport.land(plane).not_to raise_error }
  end
# As an air traffic controller
# So I can get passengers on the way to their destination
# I want to instruct a plane to take off from an airport and confirm
# that it is no longer in the airport
# airport <------take_off------> plane
# plane <------left?-------> true/false

  it 'so that plane will take from airport instruct plane to take off and confirm not in airport' do
    plane = Plane.new
    airport = Airport.new
    expect { airport.land(plane).not_to raise_error }
    expect { plane.left?.to eq true }
  end
end
#
# As an air traffic controller
# To ensure safety
# I want to prevent landing when the airport is full
# airport <------full?-----> plane
#
# As the system designer
# So that the software can be used for many different airports
# I would like a default airport capacity that can be overridden as appropriate
# airport <------capacity------> a value
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
