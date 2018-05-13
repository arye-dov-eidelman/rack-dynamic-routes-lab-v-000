class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    case req.path
    when /\/items\//
      req_item = req.path.split('/')[2]
      found item = self.class.items.find do |item|
        item.name == req_item
      end

    else
      resp.write 'Route not found'
      resp.status = 404

    end

    resp.finish
  end
end
