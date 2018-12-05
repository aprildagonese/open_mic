class OpenMic
  attr_reader :logistics, :location, :date, :performers

  def initialize(logistics)
    @logistics = logistics
    @location = @logistics[:location]
    @date = @logistics[:date]
    @performers = @logistics[:performers] = []
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    


end
