class application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    resp.write ''
    resp.status = 200
  end
end
