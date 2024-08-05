module RSmiler
  class Config
    attr_accessor :text

    def initialize
      @text = "RSmiler log"
    end
  end

  @config = Config.new

  def self.config
    @config
  end

  def self.config=(config)
    @config = config
  end
end
