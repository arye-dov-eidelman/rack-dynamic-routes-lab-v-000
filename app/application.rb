class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    case req.path
    when /testing/
      resp.write 'Route not found'
      resp.status = 404
    # when condition

    end
    resp.write ''
    resp.finish
  end
end
