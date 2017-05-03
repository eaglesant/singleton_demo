class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end
  def self.say_something
    puts "haha"
  end

  @@x = nil

def self.instance
  if @@x == nil
    @@x = Logger.new
  end

  return @@x
end

  def log_something what
    @f.puts what
  end
end

Logger.say_something
Logger.instance.log_something 'hello 2'