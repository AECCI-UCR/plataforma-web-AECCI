module CoursesHelper
  ROMAN_NUMBERS = {1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V'}

  def romanize(number)
    ROMAN_NUMBERS[number]
  end
end
