require 'pry'

class Hash
  def keys_of(arguments)
    binding.pry
    self.select{|key, value| value == arguments}.keys
  end
end

animals = {"sugar glider"=>"Australia","aye-aye"=> "Madagascar","red-footed tortoise"=>"Panama","kangaroo"=> "Australia","tomato frog"=>"Madagascar","koala"=>"Australia"}
puts animals.keys_of("Australia").inspect
