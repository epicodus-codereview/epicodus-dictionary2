class Definition
  @@definiton = []

  define_method(:initialize) do |type, meaning|
    @meaning = meaning
    @type = type
  end

  define_method(:meaning) do
    @meaning
  end
end
