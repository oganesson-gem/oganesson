require 'httparty'

module Services
  def Services.get_request(request = {})
    # this service will take the root endpoint and the path i.e. {root: 'url', path: 'service_path'}
    # #this service returns the api response data

    begin
      #make request
      # return what comes from the service
    rescue
      #handle error
    ensure
      #close
    end
  end

  def Services.post_request(request_data)
    # this service will take the root endpoint, the path, headers, and request data
    # #this service returns the api response data

    begin
      #make request
      # return what comes from the service
    rescue
      #handle error
    ensure
      #close
    end
  end

  def Services.put_request(request_data)
    # this service will take the root endpoint, the path, headers, and request data
    # #this service returns the api response data

    begin
      #make request
      # return what comes from the service
    rescue
      #handle error
    ensure
      #close
    end
  end


end