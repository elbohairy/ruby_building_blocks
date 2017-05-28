require './caesar_cipher.rb'
require 'rspec'



describe 'caesar_cipher' do
  context "given an empty string" do
    it "returns an empty string" do
      expect(caesar_cipher('', 4)).to eql('')
    end
  end

  context "given a word with a shift of 26" do
    it "returns the same word" do
      expect(caesar_cipher('word', 26)).to eql('word')
    end
  end

  context "given a capital letter" do
    it "returns a capitalized shifted word" do
      expect(caesar_cipher('Cap', 2)).to eql('Ecr')
    end
  end

  context "given letters near the end of the alphabet" do
    it "returns letters that wrap from z to a" do
      expect(caesar_cipher('xyz', 3)).to eql('abc')
    end
  end

end

