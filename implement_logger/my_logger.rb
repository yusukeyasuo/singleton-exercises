require 'singleton'
class MyLogger
  include Singleton

  attr_accessor :info, :debug, :error
  attr_reader :history

  def initialize
    @history = []
  end

  def info(msg)
    @history << msg
    print "INFO: #{msg}"
  end

  def debug(msg)
    @history << msg
    print "DEBUG: #{msg}"
  end

  def error(msg)
    @history << msg
    $stderr.print "ERROR: #{msg}"
  end

  def clear_history
    @history = []
  end
end
