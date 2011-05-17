#! /usr/bin/ruby
#this just a simple ruby program to take make a log of ones bloodsuagar, 
#the format is really simple using yamle to store the data for later retrival.
require 'yaml'
#ask the question
puts 'What is your blood sugar?'
#get the answer
	bs = gets
	t = Time.now
		#creates an array with the answer, and the current time.
		bs_array = [ t.strftime('%a, %b, %d, %Y %l:%M'), '--' +bs.to_s]
			#converts the array to yaml 
			bs_string = bs_array.to_yaml
	  ts = t.strftime('_%Y_%m')
	#var for our file used to store the yaml.
	filename = 'bloodsugar'+ts+'.log'
		#opens the file getting ready to write to it, Ireating the array
		File.open filename, 'a' do |f|
		#writes to the file.
		f.write bs_string
end

#repats the information of the array to see if it was correct.
puts 'your blood sugar on ' +bs_string 

