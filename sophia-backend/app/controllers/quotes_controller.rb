class QuotesController < ApplicationController

    def index
        if params[:user_id]
            # select quotes that belong to that user
            # user = User.find(params[:user_id])
            # quotes = user.quotes
        else
            quotes = Quote.all
        end

        render json: quotes.to_json(except: [:created_at, :updated_at])
    end

    def show
        quote = Quote.find(params[:id])
        render json: quote.to_json(except: [:created_at, :updated_at])
    end

    def create 
        quote = Quote.create(user_id: User.all[0].id, philosopher_name: params[:philosopher_name], quote: params[:quote], likes: 0)
        render json: quote
    end 

    def update
        quote = Quote.find(params[:id])
        quote.update(philosopher_name: params[:philosopher_name], quote: params[:quote], likes: params[:likes], user_id: params[:user_id])
        render json: quote
    end

    def destroy
        quote = Quote.find(params[:id])
        quote.delete
    end 

end

