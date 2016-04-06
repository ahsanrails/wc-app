class Registration < ActiveRecord::Base
belongs_to :plan
<<<<<<< HEAD
belongs_to :user
=======
>>>>>>> 63bbf5d79d7d015194efb59ee5f5de248d02d037

  def process_payment
    customer = Stripe::Customer.create email: email,
                                       card: card_token

    Stripe::Charge.create customer: customer.id,
                          amount: plan.price*100,
                          description: plan.name,
                          currency: 'usd'

  end

end
