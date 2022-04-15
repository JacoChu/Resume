module UsersHelper
   

    def user_sign_in?
        session[:thankyou9527].present?
    end

    def current_user
        User.find_by(id: session[:thankyou9527])
    end

    def authenticate_user
        if not user_signed_in?
            redirect_to sign_in_users_path
        end
    end
end
