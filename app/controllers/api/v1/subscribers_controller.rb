class Api::V1::SubscribersController < ApplicationController

    def index
        @subscribers = Subscriber.all.order(:last_name)
        render json: @subscribers
    end

    def create
        @subscriber = Subscriber.new(subscriber_params)
        if @subscriber.save
            render json: @subscriber
        else
            render json: {error: "Subscriber with that email address already exists!"}
        end
    end

    private

    def subscriber_params
        params.require(:subscriber).permit(:first_name, :last_name, :email)
    end

end