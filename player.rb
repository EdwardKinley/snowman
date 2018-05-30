class Player

  attr_reader(:name, :lives)

  def initialize(name, lives = 6)
    @name = name
    @lives = lives
  end

end
