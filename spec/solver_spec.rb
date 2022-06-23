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

    it "Checks that the factorial method returns the correct factorial" do
      solver = Solver.new()
      expect(solver.factorial(2)).to eql 3
    end

  end

  context 'Testing the reverse method' do
    it 'Checks that the reverse method can receive a value' do
      mock = double('solver')
      allow(mock).to receive(:reverse).with ('string')

      solver = Solver.new()
      solver.reverse('string')
    end

    it 'Checks if the reverse method returns a reverse string word' do
      solver = Solver.new
      expect(solver.reverse('string')).to eql 'gnirts'
    end

    it 'Checks if the input is a string value' do
      solver = Solver.new
      expect(solver.reverse(2)).to eql 'Invalid input'
    end
  end

  context 'Testing the fizzbuzz method' do
    it 'Checks that the fizzbuzz method can receive a value' do
      mock = double('solver')
      allow(mock).to receive(:fizzbuzz).with (1)

      solver = Solver.new()
      solver.fizzbuzz(1)
    end

    it 'Checks if the fizzbuzz method returns fizz when n is divisible by 3 ' do
      solver = Solver.new
      expect(solver.fizzbuzz('3')).to eql 'fizz'
    end

    it 'Checks if the fizzbuzz method returns buzz when n is divisible by 5 ' do
      solver = Solver.new
      expect(solver.fizzbuzz('5')).to eql 'buzz'
    end
  end
end