require './lib/api.rb'
require 'nokogiri'

  def list_top_5_cpu_process(api_object)
    puts "Current Process:"
    doc = Nokogiri::XML.parse api_object.index
    puts doc
  end
  
  api = Api.new
  list_top_5_cpu_process(api)
  
  puts "List out the top 5 running process"
  api.index
