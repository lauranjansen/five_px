class PixelsController < ApplicationController
	def index
		@pixels = Pixel.all
	end

	def new
		@pixel = Pixel.new 
	end

	def create
		@pixel = Pixel.new(pixel_params)
		if @pixel.save
			redirect_to pixels_url
		else
			render :new
		end
	end

	def show
		@pixel = Pixel.find(params[:id])
	end

	def destroy
		@pixel = Pixel.find(params[:id])
		@pixel.destroy
		redirect_to pixels_url
	end

	private
	def pixel_params
		params.require(:pixel).permit(:width, :height, :color)
	end
end