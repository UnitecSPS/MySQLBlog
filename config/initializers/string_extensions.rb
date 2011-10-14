class String
  def self.random(size)
    ActiveSupport::SecureRandom.hex(size)
  end
end
