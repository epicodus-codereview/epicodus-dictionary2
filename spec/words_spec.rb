require('rspec')
require('words')
require('definitions')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#word') do
    it('returns the given word') do
      test_word = Word.new("Aardvark")
      expect(test_word.word()).to(eq("Aardvark"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a word to the array of saved words") do
      test_word = Word.new("Aardvark")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      Word.new("Aardvark").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#definition') do
    it('initially returns an empty array of definitions') do
      test_word = Word.new("Aardvark")
      expect(test_word.definition()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a serched for word') do
      test_word = Word.new("Aardvark")
      test_word.save()
      expect(Word.find("Aardvark")).to(eq(test_word))
    end
  end

  describe('#add_definition') do
    it("adds a new definition to a word") do
      test_word = Word.new("Aardvark")
      test_definition = Definition.new("noun", "an animal")
      test_word.add_definition(test_definition)
      expect(test_word.definition()).to(eq([test_definition]))
    end
  end
end
