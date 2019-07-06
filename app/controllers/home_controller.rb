class HomeController < ApplicationController
  def index
  	@images = Attachment.last.images if Attachment.last.present?
  end

  def plays
  	@images = Attachment.last.images if Attachment.last.present?
    @plays = Play.all
  end

  def images
  	image = Attachment.last.images[params[:sequence].to_i]
    render :json => url_for(image)
  end

  def log_timer
    attachment = Attachment.last.images[params[:image_count].to_i]
    play = Play.create(source: url_for(attachment),timer: params[:timer].to_i)
    render :json => play
  end
end
