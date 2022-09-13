class ApplicationController < ActionController::Base
    import ActionDispatch:Session:CookieStore
    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_message
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_message

    def current_user
        @current_user ||= session[:current_user] && Person.find_by_id(session[:current_user])
    end

    def authorize_user
        render json:{errors:"Not Authorized"}, status: :unauthorized unless current_user
    end


    private

    def render_invalid_message(invalid)
        render json: {error: invalid.record.errors}, status: :not_found
    end

    def render_not_found_message(not_found)
        render json:{error: not_found}, status: :not_found
    end

end
