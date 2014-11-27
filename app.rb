class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
  end

  # class method
  def self.say_something
    puts "haha"
  end

  # instance method
  def log_something wat
    @f.puts wat
  end
end

Logger.say_something
Logger.instance.log_something 'blabla'
Logger.instance.log_something 'blabla2'



logger = Logger.new
logger.log_something 'hey!'
