require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class')

class TestStudent < MiniTest::Test
  def test_student_name
    student = Student.new('Tom', 'E20', 'Ruby')
    assert_equal("Tom", student.name)
  end

  def test_student_cohort
    student = Student.new('Alice', 'E21', 'Ruby')
    assert_equal("E21", student.cohort)
  end

  def test_change_student_name
    student = Student.new('Bob', 'E21', 'Ruby')
    student.change_name('Mortimer')
    assert_equal("Mortimer", student.name)
  end

  def test_change_cohort
    student = Student.new('Linda', 'E22', 'Ruby')
    student.change_cohort('E23')
    assert_equal("E23", student.cohort)
  end

  def student_talk
    student = Student.new('Paul', 'E25', 'Java')
    assert_equal("I, Paul, can talk!", student.can_talk)
  end

  def test_student_favourite_language
    student = Student.new('Linda', 'E22', 'Ruby')
    assert_equal("I love Ruby!", student.say_favourite_language)
 end




end
