require('rspec')
require('words')
require('definitions')

describe(Word) do
  # before() do
  #   Word.clear()
  # end

  describe('#word') do
    it('returns the given word') do
      test_word = Word.new("Aardvark")
      expect(test_word.word()).to(eq("Aardvark"))
    end
  end
end
