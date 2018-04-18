class GetIpController < ApplicationController
  def get_ip
   #@public_ip = Net::HTTP.get URI "https://api.ipify.org"
    @public_ip = '116.73.132.131'
    @details =  Geocoder.address(@public_ip)
  end
end
