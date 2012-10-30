require 'net/http'
 
class Api

  attr_accessor :url
  attr_accessor :uri
 
  def initialize
    @url = "http://localhost:3000/cpu_process"
    @uri = URI.parse @url
    p @url
  end

  def index(name="Default Name", extension="9999")
    p "Inside Index action"
    xml_req =
    "<?xml version='1.0' encoding='UTF-8'?>"

    request = Net::HTTP::Get.new(@url)
    request.body = xml_req
 
    http = Net::HTTP.new(@uri.host, @uri.port)
    response = http.request(request)
 
    response.body   
    p response.body 
  end

end
