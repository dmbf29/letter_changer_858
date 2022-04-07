require_relative '../encrypt'
# Rspec Tests
# 1. describe (specifying which method we're testing)
# 2. it (describing what the test should be doing)
# 3. expect (checking the output of the test)

describe '#encrypt' do
  it 'should return an empty string when given an empty string' do
    expect(encrypt('')).to eq('')
  end

  it 'should return "B" when given "E"' do
    expect(encrypt('E')).to eq('B')
  end

  it 'should return an encrypted message when given a long sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD'
    expect(actual).to eq(expected)
  end

  it 'should return an encrypted message when given a long sentence with punctuation' do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG!")
    expected = 'QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD!'
    expect(actual).to eq(expected)
  end
end
