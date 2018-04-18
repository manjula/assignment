class SendMailsController < ApplicationController
  before_action :set_send_mail, only: [:show, :edit, :update, :destroy]

  # GET /send_mails
  # GET /send_mails.json
  def index
    @send_mails = SendMail.all
  end

  # GET /send_mails/1
  # GET /send_mails/1.json
  def show
  end

  # GET /send_mails/new
  def new
    @send_mail = SendMail.new
  end

  # GET /send_mails/1/edit
  def edit
  end

  # POST /send_mails
  # POST /send_mails.json
  def create
    @send_mail = SendMail.new(send_mail_params)

    respond_to do |format|
      if @send_mail.save
        ExampleMailer.sampleemail(@send_mail).deliver


        format.html { redirect_to @send_mail, notice: 'Send mail was successfully created.' }
        format.json { render :show, status: :created, location: @send_mail }
      else
        format.html { render :new }
        format.json { render json: @send_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /send_mails/1
  # PATCH/PUT /send_mails/1.json
  def update
    respond_to do |format|
      if @send_mail.update(send_mail_params)
        format.html { redirect_to @send_mail, notice: 'Send mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @send_mail }
      else
        format.html { render :edit }
        format.json { render json: @send_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /send_mails/1
  # DELETE /send_mails/1.json
  def destroy
    @send_mail.destroy
    respond_to do |format|
      format.html { redirect_to send_mails_url, notice: 'Send mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send_mail
      @send_mail = SendMail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def send_mail_params
      params.require(:send_mail).permit(:email, :string)
    end
end
