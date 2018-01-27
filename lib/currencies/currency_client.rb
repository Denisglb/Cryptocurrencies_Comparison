module CurrencyClient
  
  def self.get_bitcoins
    get_currencies('bitcoin_api_url')
  end

  def self.get_ethereums
    get_currencies('ethereum_api_url')
  end

  def self.get_nasdaqs
    get_currencies('nasdaq_api_url')
  end

private


  def self.get_currencies(api_url)
    json_response = get_json_response(api_url)
    json_response['Data'].inject({}) do |new_element, current_element|
      key = DateTime.strptime(current_element['time'].to_s, '%s')
      value = current_element['close']
      new_element[key] = value
      new_element
    end
  end

  def self.get_json_response(api_url)
    response = RestClient.get(api_url)
    json = JSON.parse(response)
    json
  end
end