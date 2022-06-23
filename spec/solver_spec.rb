require_relative 'spec_helper'

describe Solver do
  # solver = double('solver')
  solver = Solver.new
  # context 'checks to make sure that Solver is initialized' do
    
  # end
  context 'Testing the factorial method' do

    it 'Checks that the factorial method can receive a value' do
      expect(solver).to receive(:factorial). with(0)
    end

    it "Checks that the factorial method identifies 0 as an argument and returns 1" do
      expect(solver).to receive(:factorial). with(0).and_return(1)
    end

  end
end