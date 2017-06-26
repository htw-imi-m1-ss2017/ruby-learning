require 'minitest/autorun'

class LoopPlayground < Minitest::Test

  def test_while_loop
    counter=0
    endvalue=8
    while counter < endvalue do
      counter +=1
    end
    assert_equal counter , endvalue
  end


  def test_for_loop
    counter=0
    endvalue=8
    for counter in 0..7
      counter+=1
    end
    assert_equal counter , endvalue
  end


  def test_break_statement_in_loop
    counter=0
    endvalue=8

    for counter in 0..15
      if counter >= endvalue then
        break
        counter +=1
      end
    end
    assert_equal counter , endvalue
  end
end
