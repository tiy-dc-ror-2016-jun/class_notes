class Client

  def perform
    build_client
    req = build_request
    req["Authorization"] = "token #{ENV["GITHUB_TOKEN"]}"
    response = perform_request(req)
    parse_response(response)
  end

  def build_client
    @http = Net::HTTP.new(url.host, url.port)
    @http.use_ssl = true
  end

  def build_request
    raise NotImplementedError, "Subclasses of `Client` must implement a method `.build_request` which returns an net/http request object"
  end

  private def parse_response(body)
    JSON.parse(body)
  end

  private def perform_request(request)
    response = @http.request(request)
    response.read_body
  end

end
