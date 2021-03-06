class PorridgesController < ApplicationController

#routes are api/ when you set the scope to api in the config/routes

  def index
    @porridges = Porridge.all
    render :json => @porridges.as_json
  end

  
  def view
    @porridge = Porridge.find(params[:id])
    render :json => @porridge.as_json
  end

 
  def create
    porridge = Porridge.create( porridge_params )
    render :json => porridge
  end

  
  def update
    porridge = Porridge.find(params[:id])
    if porridge.update_attributes(porridge_params)
      render json: porridge
    else
      render json: {status: :update_failed}
    end
  end

 
  def destroy
    porridge = Porridge.find(params[:id])
    if porridge.destroy!
      render json: { status: :success  }
    else
      render json: { status: :delete_failed }
    end
  end
end

#can do params.require(:porridge).permit(-array of :params ) in a private function to prevent/allow changing data
