require 'pry'

class Hash
  def keys_of(*arguments)
    self.select{|key, value| arguments.include?(value)}.keys
  end
end
