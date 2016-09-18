module ApplicationCable
  # This is the place where you authorize the incoming connection, and proceed to establish it if all is well
  class Connection < ActionCable::Connection::Base

    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    protected

    def find_verified_user
      verified_user = User.find_by(id: cookies.signed['user_id'])
      if verified_user
        verified_user
      else
        reject_unauthorized_connection
      end
    end

  end
end
