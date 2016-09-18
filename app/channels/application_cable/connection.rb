module ApplicationCable
  # This is the place where you authorize the incoming connection, and proceed to establish it if all is well
  class Connection < ActionCable::Connection::Base

    identified_by :identifier

    def connect
      # self.identifier = reject_unauthorized_connection
    end

  end
end
