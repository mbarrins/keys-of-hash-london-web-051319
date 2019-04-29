require 'pry'

class Hash
  def keys_of(*arguments)
    binding.pry
    keys_of_args = []
    arguments.each |argument|
      self.select{|key, value| keys_of_args << key if value == arguments}
    end
  end
end

animals = {"sugar glider"=>"Australia","aye-aye"=> "Madagascar","red-footed tortoise"=>"Panama","kangaroo"=> "Australia","tomato frog"=>"Madagascar","koala"=>"Australia"}
# puts animals.keys_of("Australia").inspect
puts animals.keys_of('Australia', 'Panama')
