class ApplicationController < ActionController::Base
  def only_turbo
    return if turbo_frame_request?
    render plain: "This controller only responds to Turbo Frame requests",
           status: :not_acceptable
  end
end
