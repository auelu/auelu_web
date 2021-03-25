require 'net/http'
    require 'uri'
    require 'json'

        
        uri = URI.parse("https://graph.instagram.com/refresh_access_token?grant_type=ig_refresh_token&access_token=IGQVJYZAnFJRWpkZAWRObU42R1pTaW9mbVA3NElTbzE2eDVOUnhGODBUQk1nUmJDbExSdGNHS2hnQlNRTHM3WGIwVk5tNzZAWM0FJSnpCcVlsVjhOd1prd2EyVDVRTmhmMDdvRGZAuOUd3")
        p uri
        json = Net::HTTP.get(uri)
        p json
        insta= JSON.parse(json)
        p insta