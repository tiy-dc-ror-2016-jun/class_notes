def parse_query_params(string)
  params = {}                   # => {}, {}

  string.split("&").each do |key_value_string|      # => ["zip=20180"], ["city=Lovettsville", "state=VA"]
    query_components = key_value_string.split("=")  # => ["zip", "20180"], ["city", "Lovettsville"], ["state", "VA"]

    key = query_components.first   # => "zip", "city", "state"
    value = query_components.last  # => "20180", "Lovettsville", "VA"

    params[key] = value  # => "20180", "Lovettsville", "VA"
  end                    # => ["zip=20180"], ["city=Lovettsville", "state=VA"]

  return params  # => {"zip"=>"20180"}, {"city"=>"Lovettsville", "state"=>"VA"}
end              # => :parse_query_params


parse_query_params("zip=20180")  # => {"zip"=>"20180"}

parse_query_params("city=Lovettsville&state=VA")  # => {"city"=>"Lovettsville", "state"=>"VA"}
