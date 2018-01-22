module CurrencyClient
  
  def self.get_bitcoins(api_url)
    response = RestClient.get(APP_CONFIG.fetch('bitcoin_api_url'))#This  is another best practice that we should follow when getting  variables, as can be seen here  https://github.com/thoughtbot/guides/tree/master/best-practices
    json_response = JSON.parse(response)
    json_response["Data"].inject({}) do |new_element, current_element|
      key = DateTime.strptime(current_element["time"].to_s, "%s")
      value = current_element["close"]
      new_element[key] = val
      new_element
    end
  end
end