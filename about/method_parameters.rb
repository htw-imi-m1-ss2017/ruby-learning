require 'minitest/autorun'

class MethodsPlayground < Minitest::Test

# tests methods with varargs, hashes and named parameters

  def test_param
    def method_param(x,y=1)
      return x * y
    end

    assert_equal 1, method_param(1)
    assert_equal 10, method_param(2,5)
  end

  def test_varargs
    def method_varargs(x, *varags)
      return varags
    end

    assert_equal [2,3,4], method_varargs(1,2,3,4)
  end

  # A Hash is a dictionary-like collection of unique keys and their values.
  # Also called associative arrays, they are similar to Arrays, but where an
  # Array uses integers as its index, a Hash allows you to use any object type.
  def test_hashes
    def method_hash(hash = {})
      return hash
    end

    returnVal = method_hash(name: "John Doe", age: 48, size: 175.3)

    assert_equal "John Doe", returnVal[:name]
    assert_equal 175.3, returnVal[:size]
  end

end
