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

  describe 'Testing reverse method' do
    it 'returns a reversed string' do
      expect(Solver.new.reverse('hello')).to eq('olleh')
      expect(Solver.new.reverse('world')).to eq('dlrow')
    end
  end

  describe 'Testing fizzbuzz method' do
    it 'returns "fizzbuzz" when given a multiple of 3 and 5' do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns "fizz" when given a multiple of 3' do
      expect(subject.fizzbuzz(6)).to eq('fizz')
    end

    it 'returns "buzz" when given a multiple of 5' do
      expect(subject.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns the input number as a string when not a multiple of 3 or 5' do
      expect(subject.fizzbuzz(7)).to eq('7')
    end
  end
end
