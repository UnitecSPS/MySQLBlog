class String
  def self.random(size)
    SecureRandom.hex(size)
  end
end
