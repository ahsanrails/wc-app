class SubscriptionsController < ApplicationController

def index
@subscriptions = Subscription.all
end

def subscribe
respond_to do |format|
	format.html
end
end

def plans

end

end