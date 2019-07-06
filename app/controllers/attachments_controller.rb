class AttachmentsController < ApplicationController

  # GET /attachments
  # GET /attachments.json
  def index
    @images = Attachment.last.images if Attachment.last.present?
  end

  # GET /attachments/new
  def new
    @attachment = Attachment.new
  end

  # POST /attachments
  # POST /attachments.json
  def create
    @attachment = Attachment.new(attachment_params)

    respond_to do |format|
      if @attachment.save
        format.html { redirect_to "/", notice: 'Attachment was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def attachment_params
      params.require(:attachment).permit(:number,images: [])
    end
end
