class Word
  @@words = []

  define_method(:initialize) do |word|
    @word = word
    @definition = []
  end

  define_method(:word) do
    @word
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:definition) do
    @definition
  end

  define_method(:add_definition) do |definition|
    @definition.push(definition)
  end

  define_singleton_method(:find) do |word|
    found_word = nil
    @@words.each() do |verbum|
      if verbum.word().eql?(word)
        found_word = verbum
      end
    end
    found_word
  end
end
