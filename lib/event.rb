require 'pry'
require 'time'


class Event
attr_accessor :startDate, :duration, :title, :attendees
@@all_event = Array.new

def initialize(date, duration, title, attendees)
	@startDate = Time.parse(date)
	@duration = duration 
	@title = title
	@attendees = attendees
	@@all_event << self
end

def postpone_24h
	@startDate += 24 * 60 * 60
end

def end_date
	@ending = @startDate + @duration*60
end 

def is_past?
		@past = Time.now > @startDate
end 

def is_future?
	@future = Time.now < @startDate
end

def is_soon?
	@soon = Time.now > @startDate - 30*60
end

def to_s
	puts ">Titre : #{@title}"
	puts ">Date de début : #{startDate}"
	puts ">Durée : #{duration} minutes"
	puts ">Invités : #{attendees.join(', ')}"
end

def self.all
	return @@all_event
end
end


