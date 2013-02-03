class InformationsController < ApplicationController
	def show
		id = params[:id]
		@information = Information.find(id)
	end

	def index
		@informs=Information.all
	end

	def new
    		@information=Information.new
  end

  def create
  	@information=Information.new(params[:information])
    	if @information.save
      	redirect_to informations_path,:notice => "#{@information.topic} was successfully created."
    	else
      	 render 'new' 
    	end
  	end

  def edit
    @information = Information.find params[:id]
  end

  def update
    @information = Information.find params[:id]
    if @information.update_attributes(params[:information])
      redirect_to information_path(@information),:notice => "#{@information.topic} was successfully updated."
    else
       render 'edit' 
    end
  end

  def destroy
    @information = Information.find(params[:id])
    @information.destroy
    redirect_to informations_path,:notice =>"'#{@information.topic}' has been deleted."
  end
end
