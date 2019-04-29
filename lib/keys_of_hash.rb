require 'pry'

class Hash
  def keys_of(*arguments)
    # binding.pry
    # keys_of_args = []
    # arguments.each do |argument|
    #   puts arguments.inspect
    #   puts argument
    #   self.select{|key, value| keys_of_args << key if value == argument}
    # end
    # keys_of_args
    self.select{|key, value| keys_of_args << key if arguments.include?(value)}.keys
  end
end

animals = {"sugar glider"=>"Australia","aye-aye"=> "Madagascar","red-footed tortoise"=>"Panama","kangaroo"=> "Australia","tomato frog"=>"Madagascar","koala"=>"Australia"}
puts animals.keys_of("Australia").inspect
puts animals.keys_of('Australia', 'Panama').inspect
