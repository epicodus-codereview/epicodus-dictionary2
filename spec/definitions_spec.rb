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
end
