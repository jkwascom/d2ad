module DotaAPI
  require 'net/http'

  VERSION = '001'

  def self.query(api_key, resource, params={})
    uri = URI("https://api.steampowered.com/IDOTA2Match_570/#{resource}/V#{VERSION}/")

    par = {}
    par[:key] = api_key
    par.merge!(params)
    uri.query = URI.encode_www_form(par)

    res = Net::HTTP.get_response(uri)
    res.body if res.is_a?(Net::HTTPSuccess)
  end
end
