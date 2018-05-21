class Bike

  attr_accessor :working_status

  def initialize
    @working_status = true
  end

  def working?
    @working_status
  end

  def report_broken
    "You have reported the bike as broken"
    @working_status = false
  end

end

b = Bike.new
p b.working_status
p b.working_status = false
p b.working_status
