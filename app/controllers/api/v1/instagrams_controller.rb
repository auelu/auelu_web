class Api::V1::InstagramsController < ApiController
 
  def index
    render json: instalist
  end

  private
    require 'net/http'
    require 'uri'
    require 'json'

    def instalist
        uri = URI.parse("https://graph.instagram.com/me/media?fields=id&access_token=IGQVJYZAnFJRWpkZAWRObU42R1pTaW9mbVA3NElTbzE2eDVOUnhGODBUQk1nUmJDbExSdGNHS2hnQlNRTHM3WGIwVk5tNzZAWM0FJSnpCcVlsVjhOd1prd2EyVDVRTmhmMDdvRGZAuOUd3")
        json = Net::HTTP.get(uri)
        insta= JSON.parse(json)
        instagrams = []
        for value in insta["data"][0..10] do
            hash = value["id"]
            uri = URI.parse ("https://graph.instagram.com/#{hash}?fields=media_url,caption,permalink&access_token=IGQVJYZAnFJRWpkZAWRObU42R1pTaW9mbVA3NElTbzE2eDVOUnhGODBUQk1nUmJDbExSdGNHS2hnQlNRTHM3WGIwVk5tNzZAWM0FJSnpCcVlsVjhOd1prd2EyVDVRTmhmMDdvRGZAuOUd3")
            json = Net::HTTP.get(uri)
            insta= JSON.parse(json)
            instagrams.push(insta)
        end
        return instagrams
    end
end