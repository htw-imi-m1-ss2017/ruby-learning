require 'minitest/autorun'

class ControlStructuresPlayground < Minitest::Test

  def test_if_condition_true
    result = 0
    condition = true
    if condition
      result = 1
    end
    assert_equal 1, result
  end

  def test_if_condition_false
    result = 0
    condition = false
    if condition
      result = 1
    end
    assert_equal 0, result
  end


  def test_if_else_condition_true
    condition = true
    if condition
      result = 1
    else
      result = 0
    end
    assert_equal 1, result
  end


  def test_if_else_condition_false
    condition = false
    if condition
      result = 1
    else
      result = 0
    end
    assert_equal 0, result
  end


  def test_unless_condition_true
    result = 1
    condition = true
    unless condition
      result = 0
    end
    assert_equal 1, result
  end

  def test_unless_condition_false
    result = 1
    condition = false
    unless condition
      result = 0
    end
    assert_equal 0, result
  end

end

