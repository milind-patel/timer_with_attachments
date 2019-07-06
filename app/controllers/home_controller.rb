class HomeController < ApplicationController
  def index
  	@images = Attachment.last.images if Attachment.last.present?
  end
end
