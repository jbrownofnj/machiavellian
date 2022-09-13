class SessionsController < ApplicationController
    before_action :authorize_user, except: [:create]

    def create
        @user=Person.find_by(person_email: params[:user_email])
        if @user&.authenticate(params[:password])
            session[:current_user]=@user.id
            render json:@user, status: :ok, serializer: PersonSerializer
        else
            render json:{errors:"Bad username or password."}
        end
    end

    def destroy
        session[:current_user]=nil
        render json:{success:"You are logged out."}, status: :ok
    end
    

end
