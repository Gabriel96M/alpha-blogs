class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in? #available to all views 

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id] #this query will hit the datebase only one time if we aleardy have current_user
    end

    def logged_in?
        !!current_user  #change the current_user into a boolean type
    end

    def require_user
        if !logged_in? 
            flash[:alert] = "You must be logged in to perform that action"
            redirect_to login_path
        end
    end
end
