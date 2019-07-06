class HomeController < ApplicationController
  before_action :last_attachment 
  
  def index
  	@images = @attachment.images if @attachment.present?
  end

  def plays
  	@images = @attachment.images if @attachment.present?
    @plays = Play.all
  end

  def images
  	image = @attachment.images[params[:sequence].to_i]
    render :json => url_for(image)
  end

  def log_timer
    attachment = @attachment.images[params[:image_count].to_i]
    play = Play.create(source: url_for(attachment),timer: params[:timer].to_i)
    render :json => play
  end

  def last_attachment
    @attachment = Attachment.last
  end
end
