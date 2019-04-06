class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' 
      do |req|
      req.params['10VZJWKOZYEES00ZYITLOLHVB4QEFOEQTNBNGXBUE32BO2OU'] = client_id
      req.params['NNMBHWTMHRG3FF21XJFQ5BVOOPLXKZF4PQSLMXT3BY3WU3L1'] = client_secret
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
