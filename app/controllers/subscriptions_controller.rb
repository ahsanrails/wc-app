class SubscriptionsController < ApplicationController

def index
@subscriptions = Subscription.all
end

def subscribe
<<<<<<< HEAD
	@usr = User.find(16)
	respond_to do |format|
=======
respond_to do |format|
>>>>>>> 63bbf5d79d7d015194efb59ee5f5de248d02d037
	format.html
end
end

def plans

end

end