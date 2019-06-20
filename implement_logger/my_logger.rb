require 'singleton'
class MyLogger
  include Singleton

  attr_accessor :info, :debug, :error

  def info(msg)
    print "INFO: #{msg}"
  end

  def debug(msg)
    print "DEBUG: #{msg}"
  end

  def error(msg)
    $stderr.print "ERROR: #{msg}"
  end
end
