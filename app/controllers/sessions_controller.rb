class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    

    def destroy
        session.clear[:name]
        redirect_to '/'
    end

    def create
        if params[:name] == nil || params[:name] == ""
            redirect_to '/new'
        else
            session[:name] = params[:name]
            redirect_to '/welcome'
        end
    end

    def new
    end

 
    

end