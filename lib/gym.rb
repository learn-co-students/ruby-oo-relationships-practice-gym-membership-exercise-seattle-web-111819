
class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships #gym1.memberships
    Membership.all.select {|membership|membership.gym == self}
  end

  def lifters #gym1.lifters
    memberships.map {|membership|membership.lifter}
  end

  def lifter_names #gym1.lifter_names
    #Get a list of the names of all lifters that have a membership to that gym
    lifters.map {|lifter| lifter.name}
  end

  def lift_total #gym1.lift_total
  #Get the combined lift total of every lifter has a membership to that gym
    lifters.sum {|lifter|lifter.max_weight}  
  end

end
