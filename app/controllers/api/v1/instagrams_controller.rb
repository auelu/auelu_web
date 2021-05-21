class Api::V1::InstagramsController < ApiController
 
  def index
    render json: instalist
  end

  private
    require 'net/http'
    require 'uri'
    require 'json'

    def instalist
        uri = URI.parse("https://graph.instagram.com/me/media?fields=id&access_token=IGQVJXRUczUVNHU2xYVm1xc1dvRm5JbmVPczhmV3NUOXR6d1hUZAmtTTFNlQmFUT3NTOWdWbTlyUmRZANldxUnJSQlBhYThRZAk9mU2xBMTV3YkVHZAFV4aFVWMEFrazg2T0pid3B3Y3gxNUV0dHVDdE9XUQZDZD")
        json = Net::HTTP.get(uri)
        insta= JSON.parse(json)
        instagrams = []
        for value in insta["data"][0..10] do
            hash = value["id"]
            uri = URI.parse ("https://graph.instagram.com/#{hash}?fields=media_url,caption,permalink&access_token=IGQVJXRUczUVNHU2xYVm1xc1dvRm5JbmVPczhmV3NUOXR6d1hUZAmtTTFNlQmFUT3NTOWdWbTlyUmRZANldxUnJSQlBhYThRZAk9mU2xBMTV3YkVHZAFV4aFVWMEFrazg2T0pid3B3Y3gxNUV0dHVDdE9XUQZDZD")
            json = Net::HTTP.get(uri)
            insta= JSON.parse(json)
            instagrams.push(insta)
        end
        return instagrams
    end
end