class Registration < ActiveRecord::Base
belongs_to :plan

  def process_payment
    customer = Stripe::Customer.create email: email,
                                       card: card_token

    Stripe::Charge.create customer: customer.id,
                          amount: plan.price*100,
                          description: plan.name,
                          currency: 'usd'

  end

end
