require 'spec_helper'

describe ValidSyntax do

  let(:correct_syntax) { "def sum; 2+3; end"}
  let(:incorrect_syntax) { "defs sum; 2+3; end"}
  it 'has a version number' do
    expect(ValidSyntax::VERSION).not_to be nil
  end

  it 'returns true given some valid syntax' do
    expect(correct_syntax.is_valid_syntax).to eq(true)
  end

  it 'returns false given some invalid syntax' do
    expect(incorrect_syntax.is_valid_syntax).to eq(false)
  end

  it 'does not have errors given some valid syntax' do
    correct_syntax.is_valid_syntax
    expect(correct_syntax.syntax_errors).to eq(nil)
  end

  it 'has errors given some invalid syntax' do
    incorrect_syntax.is_valid_syntax
    expect(incorrect_syntax.syntax_errors).not_to eq(nil)
  end

end
