module HTTPong
  module Rails
    class Reloader
      def initialize(app)
        @app = app
      end

      def call(env)
        HTTPong.schemes.each do |scheme|
          scheme.reload
        end
        @app.call(env)
      end
    end
  end
end
