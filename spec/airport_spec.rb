require 'airport.rb'
describe Airport do
  it 'instructs plane to land at airport' do
    expect(subject).to respond_to(:land).with(1).argument 
  end

  it 'insructs plane to take off from airport' do
    expect(subject).to respond_to(:take_off).with(1).argument
  end
end
