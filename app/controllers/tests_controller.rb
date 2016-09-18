class TestsController < ApplicationController

  def test
    PostJob.perform_later
  end

end
