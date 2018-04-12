class DataController < ApplicationController
  def index
    url = 'https://api.cryptowat.ch/markets/bitflyer/btcfxjpy/ohlc?periods=' + params[:periods]
    url += "&after#{ params[:after] }" if params[:after].present?
    respond = connect_server_api url
    respond_to do |format|
      format.json { render json: respond }
    end
  end
end
