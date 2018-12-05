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
    p @performers
    all_jokes = @performers.map do |performer|
      performer.jokes
    end
    all_jokes.count != all_jokes.uniq.count #this isn't returning a unique array for some reason
  end

end
