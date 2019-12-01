
class Lifter
  attr_reader :name, :max_weight
  attr_accessor :gym
  @@all = []
  def initialize(name, max_weight)
    @name = name
    @max_weight = max_weight
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships #lifter1.memberships
    Membership.all.select {|membership|membership.lifter == self}
  end

  def gyms #lifter1.gyms
    memberships.map {|membership|membership.gym}
  end

  def self.avg_lift_total #Lifter.avg_lift_total
    #look at all Lifter's max_weight, add together
    #divide by lifter.length

    lifter_sum = Lifter.all.sum {|lifter|lifter.max_weight}
    lifter_count = Lifter.all.count
    lifter_sum / lifter_count
  end

  def total_mem_cost #lifter1.total_mem_cost
   #Get the total cost of a specific lifter's gym memberships
   memberships.sum {|membership| membership.cost}
  end

  def sign_up(gym_new, mem_cost) #lifter1.sign_up(gym3, 236)
    #Given a gym and a membership cost, sign a specific lifter up for a new gym
    new_membership = Membership.new(self, gym_new, mem_cost)
    new_membership.gym = gym_new
    new_membership.cost = mem_cost
    new_membership

  end

end
