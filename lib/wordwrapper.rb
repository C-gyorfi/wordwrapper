require "wordwrapper/version"

module Wordwrapper
  class Error < StandardError; end

  def self.wrap(str, max_len)
    return str if str.length <= max_len
    indexOfSpace = str[0, max_len].rindex(" ")
    part = indexOfSpace.nil? ? str[0, max_len] : str[0..indexOfSpace-1]
    part + "\n" + wrap(str[part.length..-1].strip, max_len)
  end

end
