class TurboOnlyController < ApplicationController
  prepend_before_action :only_turbo

  def turbo_only_layout
    raise NotImplementedError, "#{self.class} must implement turbo_only_layout"
  end

  layout :turbo_only_layout
end
