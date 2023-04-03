class TurboOnlyController < ApplicationController
  class NoLayoutProvidedError < StandardError
  end

  prepend_before_action :only_turbo

  layout -> {
           raise NoLayoutProvidedError,
                 "Class that inherits from #{self.class} must provide a layout"
         }
end
