class Student

  def initialize(name, cohort, favourite_language)
    @name = name
    @cohort = cohort
    @favourite_language = favourite_language
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def change_name(new_name)
    @name = new_name
  end

  def change_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talk
    return "I, #{@name}, can talk!"
  end

  def say_favourite_language
    return "I love #{@favourite_language}!"
  end



end
