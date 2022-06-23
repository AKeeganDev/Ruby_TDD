require_relative 'spec_helper'

RSpec.describe Solver do
  # context 'checks to make sure that Solver is initialized' do
 
  # end
  context 'Testing the factorial method' do

    it 'Checks that the factorial method can receive a value' do
      mock = double('solver')
      allow(mock).to receive(:factorial).with (0)

      solver = Solver.new()
      solver.factorial(1)
    end

    it "Checks that the factorial method only works with positive numbers including 0" do
      solver = Solver.new()
      expect(solver.factorial(-1)).to eql 'invalid number'
    end

    it "Checks that the factorial method identifies 0 as an argument and returns 1" do
      solver = Solver.new()
      expect(solver.factorial(0)).to eql 1
    end

  end
end