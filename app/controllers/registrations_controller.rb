class RegistrationsController < ApplicationController
<<<<<<< HEAD
  before_filter :authenticate_user!
=======
>>>>>>> 63bbf5d79d7d015194efb59ee5f5de248d02d037
  before_action :set_registration, only: [:show, :edit, :update, :destroy]

  def index
    @registrations = Registration.all
  end

  def show
  end

  def new
    @registration = Registration.new
    @plan = Plan.find_by id: params["plan_id"]
  end


  def create
      @registration = Registration.new registration_params.merge(email: stripe_params["stripeEmail"],
                                                                 card_token: stripe_params["stripeToken"])
<<<<<<< HEAD
      @registration.user = current_user
      raise "Please, check registration errors" unless @registration.valid?
      @registration.process_payment
      @registration.save
      PaymentMailer.payment_email(current_user, @registration.plan, @registration).deliver
=======
      raise "Please, check registration errors" unless @registration.valid?
      @registration.process_payment
      @registration.save
>>>>>>> 63bbf5d79d7d015194efb59ee5f5de248d02d037
      redirect_to @registration, notice: 'Registration was successfully created.'
    rescue
      flash[:error] = e.message
      render :new
  end

  private
    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end

    def set_registration
      @registration = Registration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:plan_id, :full_name, :company, :contact)
    end

end