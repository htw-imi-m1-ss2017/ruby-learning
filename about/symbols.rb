require 'minitest/autorun'

class SymbolsPlayground < Minitest::Test

  def test_symbol
    x = :sym
    y = :sym
    assert_equal(true, (x.__id__ == y.__id__) && (:sym.__id__ == x.__id__))
  end

  def test_nosymbol
    x = "string"
    y = "string"
    assert_equal(false, (x.__id__ == y.__id__) || ("string".__id__ == x.__id__))
  end

end
