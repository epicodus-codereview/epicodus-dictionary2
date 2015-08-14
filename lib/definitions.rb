class Definition
  @@definition = []

  define_method(:initialize) do |type, meaning|
    @meaning = meaning
    @type = type
  end

  define_method(:meaning) do
    @meaning
  end

  define_method(:type) do
    @type
  end

  define_singleton_method(:all) do
    @@definition
  end

  define_method(:save) do
    @@definition.push(self)
  end
end
