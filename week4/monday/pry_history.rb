url
ls url
url.host
url.scheme
url.query
url.hash
url.scheme
exit!
http
exit
req
ls req
response
response.read_body
body = _
require 'json'
parsed_body = JSON.parse(body)
parsed_body[0]
parsed_body[0]["actor"]
parsed_body[0]["actor"]["avatar_url"]
`open #{parsed_body[0]["actor"]["avatar_url"]}`
exit!
chris_events
exit
chris_events
exit
ENV
exit
chris_events
exit
payload
exit
payload
exit!
payload
exit
payload
exit
payload
contents = JSON.generate(payload)
require 'file_utils'
require 'fil_utils'
require 'fileutils'
Dir.mkdir "test"
File.write "./test/create_repo.json", contents
exit!
payload
exit!
require 'httpparty'
require 'http_party'
require 'HTTPparty'
HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
require 'httparty'
response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
exit
