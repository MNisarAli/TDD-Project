require_relative '../solver'

describe Solver do
  describe 'Testing factorial method' do
    context 'when given 0' do
      it 'returns 1' do
        expect(Solver.new.factorial(0)).to eq(1)
      end
    end

    context 'when given a positive integer' do
      it 'returns the correct factorial' do
        expect(Solver.new.factorial(5)).to eq(120)
        expect(Solver.new.factorial(10)).to eq(3_628_800)
      end
    end

    context 'when given a negative integer' do
      it 'raises an exception' do
        expect { Solver.new.factorial(-5) }.to raise_error(ArgumentError)
      end
    end
  end
end
