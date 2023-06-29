class ClientsController < ApplicationController

  def index
    if params[:status] == "activated"
      @clients = Client.activated
    else
      @clients = Client.deactvated
    end
  end
  
end
