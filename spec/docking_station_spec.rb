
require './lib/docking_station.rb'

describe DockingStation do
    subject(:station) {DockingStation.new}

    it {is_expected.to respond_to(:release_bike)}
    
    it 'release_bike' do
        bike = station.release_bike
        expect(bike.working?).to eq true
    end

    it {is_expected.to respond_to(:dock).with(1).argument }


    it { is_expected.to respond_to(:bike) }

    it 'docks a bike' do
        bike = Bike.new
        expect(station.dock(bike)).to eq bike
    end

    it 'contains a bike' do
        bike = Bike.new
        station.dock(bike)
        expect(station.bike).to eq bike
    end

end
