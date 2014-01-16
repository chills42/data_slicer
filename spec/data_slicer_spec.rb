require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'String' do
  it 'has a data_slice method' do
    ''.data_slice
  end
  it 'should return an array' do
    expect(''.data_slice).to be_kind_of(Array)
  end
  it 'slices the specified lengths, starting at index 0' do
    expect('asdf'.data_slice(2, 2)).to eq(%w[as df])
  end
  it 'trims leading and trailing whitespace from the field' do
    expect('a   b   '.data_slice(4, 4)).to eq(%w[a b])
  end
  it 'can handle several different field widths' do
    example = 'MATH2010Calculus I          4Smith           '
    expected_array = ['MATH', '2010', 'Calculus I', '4', 'Smith']
    expect(example.data_slice(4, 4, 20, 1, 16)).to eq(expected_array)
  end
end
