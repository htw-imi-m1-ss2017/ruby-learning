require 'minitest/autorun'

class MethodsPlayground < Minitest::Test

  def test_single_return_statement
    def testmethod
      x=10
      y=8
      z=0
    end
    assert_equal 0,testmethod
  end

  def test_multiple_return_statements
    def testmethod
      x=5
      y=1
      z=2
      return x,y,z
    end
    assert_equal [5,1,2],testmethod
  end

  def test_parameters
    def testmethod(x,y=6)
      x=x+y
      return x
    end
    assert_equal 9, testmethod(3)
    assert_equal 3, testmethod(3,0)
    end

end
