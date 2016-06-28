class Currency
  def initialize(code:, value:)
    @code = code
    @value = value
  end

  def code
    @code
  end

  def value
    @value
  end

  def +(other)
    if @code == other.code
      @value + other.value
    end
  end
end
