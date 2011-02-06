module PasswordsHelper
  def cell_id(row, col)
    "%02d%02d" % [row, col]
  end

  def letters
    'A'..'Z'
  end

  # We'll use ascii characters 33 through 126 as possible pw options
  def random_letter
    (rand(93) + 33).chr
  end
end
