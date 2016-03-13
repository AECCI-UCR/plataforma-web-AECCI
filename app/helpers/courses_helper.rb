module CoursesHelper
  letters = %w[ M     D    C    L   X   V  I ]
  values = [1000, 500, 100, 50, 10, 5, 1]
  LETTERS = letters.zip values

  def romanize(number)
    n = number
    c = 0 # Avoid reallocating count.
    LETTERS.map { |l, v| c, n = n.divmod v; l*c }.join ''
  end
end
