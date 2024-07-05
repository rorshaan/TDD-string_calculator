RSpec.describe StringCalculator do
  describe '.add' do
    context 'with invalid input' do
      it 'return 0 with no parameters' do
        expect(StringCalculator.add).to eq(0)
      end
    end
  end
end
