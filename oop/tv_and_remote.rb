# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel
  def initialize(input)
    @power = input[:power]
    @volume = input[:volume]
    @channel = input[:channel]
  end
end

class Remote < Tv
  attr_reader :tv
  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    if tv.power == "On"
      tv.power = "Off"
    else
      tv.power = "On"
    end
  end

  def increment_volume
    tv.volume += 1
  end

  def decrement_volume
    tv.volume -= 1
  end

  def set_channel(number)
    tv.channel = number
  end
end

# Driver code
puts "TESTING tv_and-remote..."
puts

tv1 = Tv.new(power: "On", volume: 25, channel: 54)
tv2 = Tv.new(power: "Off", volume: 15, channel: 1)
remote1 = Remote.new(tv1)
remote2 = Remote.new(tv2)

puts "Tv1's power is " + tv1.power + ", volume is " + tv1.volume.to_s + ", now is on channel " + tv1.channel.to_s
puts "Tv2's power is " + tv2.power + ", volume is " + tv2.volume.to_s + ", now is on channel " + tv2.channel.to_s
puts

puts "Test if remote.tv represents which tv it actually controls >>> "
puts remote1.tv.power
puts remote1.tv.volume
puts remote1.tv.channel

if remote1.tv.power == "On" && remote1.tv.volume == 25 && remote1.tv.channel == 54
  puts "pass!"
else
  puts "fail!"
end

puts

puts remote2.tv.power
puts remote2.tv.volume
puts remote2.tv.channel

if remote2.tv.power == "Off" && remote2.tv.volume == 15 && remote2.tv.channel == 1
  puts "pass!"
else
  puts "fail!"
end

puts

puts "Test toggle_power method >>>"
remote1.toggle_power
if tv1.power == "Off"
  puts "pass!"
else
  puts "fail!"
end
puts

remote2.toggle_power
if tv2.power == "On"
  puts "pass!"
else
  puts "fail!"
end
puts

puts "Test increment_volume method >>>"
remote1.increment_volume
if tv1.volume == 26
  puts "pass!"
else
  puts "fail!"
end
puts

puts "Test decrement_volume method >>>"
remote2.decrement_volume
if tv2.volume == 14
  puts "pass!"
else
  puts "fail!"
end

puts

puts "Test set_channel method >>>"
remote1.set_channel(3)
if tv1.channel == 3
  puts "pass!"
else
  puts "fail!"
end

remote2.set_channel(3)
if tv2.channel == 3
  puts "pass!"
else
  puts "fail!"
end
