class ChargesController < ApplicationController

  def new
    @outline = Outline.find(params[:outline_id])
  end

  def create
    # p "#{'!'*25}"
    # p "inside the create"
    # p "#{'!'*25}"
    # p "#{'!'*25}"
    # @charge = Charge.find(params[:id])
    # if @charge.save
    #   #do some stuff
    # end
    # Amount in cents
    @amount = (params[:id])

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


end


