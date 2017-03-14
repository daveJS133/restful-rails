class PorridgesController < ApplicationController

#routes are api/ when you set the scope to api in the config/routes

  def index
    respond_to do |format|
      format.html
      format.json {render json: Show.all}

      # porridges = Porridge.all - using Show.all instead
      
    end
  end

  
  def show
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