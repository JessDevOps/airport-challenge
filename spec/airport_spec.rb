require 'airport.rb'

describe Airport do
  subject(:airport) { described_class.new(10) }
  
  it 'cannot land plane when airport full' do
    10.times do
      airport.land(:plane)
    end
    expect { airport.land(:plane).to raise_error 'airport is full, cannot land plane' } 
  end

  it 'instructs plane to land at airport' do
    expect(subject).to respond_to(:land).with(1).argument 
  end

  it 'insructs plane to take off from airport' do
    expect(subject).to respond_to(:take_off).with(1).argument
  end

end
