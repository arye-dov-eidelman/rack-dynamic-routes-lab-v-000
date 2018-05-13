class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    case req.path
    when /\/items\//
      req_item = req.path.split('/')[2]
      found_item = @@items.find do |item|
        item.name == req_item
      end
      if found_item
        resp.write found_item.price

    else
      resp.write 'Route not found'
      resp.status = 404

    end

    resp.finish
  end
end
