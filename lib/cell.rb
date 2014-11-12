class Cell

  attr_reader :content
  # NB need to change to accessor if water changed to ship after initializing

  def initialize(content)
    @content = content
    @shot_at = false
  end

  def hit!
    @shot_at = content.hit!
  end

  def hit?
    @content.hit?
  end

  def shot_at?
    @shot_at
  end

end

