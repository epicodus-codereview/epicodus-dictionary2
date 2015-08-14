require('rspec')
require('words')
require('definitions')

describe(Definition) do
  # before() do
  #   Definition.clear()
  # end

  describe('#meaning') do
    it('returns the definition for a given word') do
      test_definition = Definition.new("noun", "an animal")
      expect(test_definition.meaning()).to(eq("an animal"))
    end
  end

  describe('#type') do
    it('returns the type of word') do
      test_definition = Definition.new("noun", "an animal")
      expect(test_definition.type()).to(eq("noun"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a definition to the array of saved definitions") do
      test_definition = Definition.new("noun", "an animal")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
end
