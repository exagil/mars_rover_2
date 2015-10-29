require 'mars_rover'

module MarsRover
  RSpec.describe Rover do

    describe '#new' do
      context 'with coordinates in range of plateau coordinates' do
        let(:plateau){ Plateau.new(5, 5) }
        let(:rover){ Rover.new(3, 3, plateau) }

        it 'creates a new rover' do
          expect(rover.class).to eq(Rover)
          expect(rover.instance_eval('@x')).to eq(3)
          expect(rover.instance_eval('@y')).to eq(3)
          expect(rover.instance_eval('@plateau_landed_on')).to eq(plateau)
        end
      end
    end

  end
end