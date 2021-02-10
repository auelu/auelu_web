require 'net/http'
require 'uri'
require 'json'
uri = URI.parse("https://graph.instagram.com/me/media?fields=id&access_token=IGQVJYZAnFJRWpkZAWRObU42R1pTaW9mbVA3NElTbzE2eDVOUnhGODBUQk1nUmJDbExSdGNHS2hnQlNRTHM3WGIwVk5tNzZAWM0FJSnpCcVlsVjhOd1prd2EyVDVRTmhmMDdvRGZAuOUd3")
json = Net::HTTP.get(uri)
insta = JSON.parse(json)
instas= []
for value in insta["data"][0..2] do
        hash = value["id"]
        uri = URI.parse ("https://graph.instagram.com/#{hash}?fields=media_url&access_token=IGQVJYZAnFJRWpkZAWRObU42R1pTaW9mbVA3NElTbzE2eDVOUnhGODBUQk1nUmJDbExSdGNHS2hnQlNRTHM3WGIwVk5tNzZAWM0FJSnpCcVlsVjhOd1prd2EyVDVRTmhmMDdvRGZAuOUd3")
        json = Net::HTTP.get(uri)
        p json
        insta= JSON.parse(json)
        p insta
        instas.push(insta["media_url"])
   
        
end
p instas
