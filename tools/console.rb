# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Alice", 200)
lifter2 = Lifter.new("Aaron", 400)
lifter3 = Lifter.new("Alex", 100)
lifter4 = Lifter.new("Anton", 250)
lifter5 = Lifter.new("Ashley", 350)
lifter6 = Lifter.new("Annie", 560)


gym1 = Gym.new("Gymmy1")
gym2 = Gym.new("Gymmy2")
gym3 = Gym.new("Gymmy3")


# lifter1.gym = gym1
# lifter2.gym = gym2
# lifter3.gym = gym3
# lifter4.gym = gym1
# lifter5.gym = gym2
# lifter6.gym = gym3

mem1 = Membership.new(lifter1, gym1, 200)
mem2 = Membership.new(lifter2, gym2, 300)
mem3 = Membership.new(lifter3, gym3, 100)
mem4 = Membership.new(lifter4, gym1, 250)
mem5 = Membership.new(lifter5, gym2, 200)
mem6 = Membership.new(lifter6, gym3, 300)
mem7 = Membership.new(lifter1, gym2, 100)
mem8 = Membership.new(lifter2, gym2, 80)

binding.pry

puts "Gains!"
