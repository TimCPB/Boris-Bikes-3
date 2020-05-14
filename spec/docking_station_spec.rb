
require './lib/docking_station.rb'

describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
    it 'release_bike' do
        bike = subject.release_bike
        expect(bike.working?).to eq true
    end

  it {is_expected.to respond_to(:dock).with(1).argument }


    it { is_expected.to respond_to(:bike) }

   it 'docks a bike' do
     bike = Bike.new
     expect(subject.dock(bike)).to eq bike
   end

   it 'contains a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
      end

end
