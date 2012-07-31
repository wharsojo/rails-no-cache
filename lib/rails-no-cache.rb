require 'action_controller'

module ActionController
  module Rendering
    # rename original method for extending     
    alias_method :render_original_no_cache, :render

    # This re-opens render
    def render(*args) #:nodoc:
      render_original_no_cache(*args)
      self.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
      response_body
    end
  end
end

