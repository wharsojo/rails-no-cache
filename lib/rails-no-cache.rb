require 'action_controller'

module ActionController
  module Rendering
    # rename original method for extending     
    alias_method :render_original_no_cache, :render

    # This re-opens render
    def render(*args) #:nodoc:
      render_original_no_cache(*args)
      self.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
      self.headers["Pragma"] = "no-cache"
      self.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
      response_body
    end
  end
end

