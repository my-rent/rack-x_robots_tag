module Rack
  class XRobotsTag
    VERSION = '1.4.0'

    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)

      headers['X-Robots-Tag'] = 'none'

      [status, headers, response]
    end
  end
end
