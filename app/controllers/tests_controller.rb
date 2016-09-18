class TestsController < ApplicationController

  def test
    NotificationJob.perform_later(@current_user)
  end

end
