class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def connect_server_api uri
    encode_uri = URI::encode uri
    HTTParty.get(encode_uri)
  end

  def connect_server_api_post uri, data
    HTTParty.post(
      uri,
      body: data.to_json,
      headers: { 'Content-Type' => 'application/json' }
    )
  end
end
