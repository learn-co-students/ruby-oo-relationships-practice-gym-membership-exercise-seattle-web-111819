class Lifter
  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|membership| membership.gym}
  end

  def self.average_lift_total
    @@all.reduce {|sum, lifter| sum + lifter.lift_total} / @@all.count
  end

  def join_gym(gym, cost)
    Membership.new(self, gym, cost)
  end

end
