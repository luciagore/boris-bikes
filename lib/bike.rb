class Bike

  def initialize 
    @working_status = true
  end

  def working?
    # if status == broken ? false : true
    @working_status
  end

  def report_broken
    @working_status = false
    "You have reported the bike as broken"
  end


end
