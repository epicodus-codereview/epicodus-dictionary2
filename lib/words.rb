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
end
