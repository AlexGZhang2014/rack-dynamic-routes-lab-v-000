class Application
  
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      if @@items.include?(item_name)
        item = @@items.detect {|item| item.name == item_name}
        resp.write item.name
      else
        resp.status = 400
        resp.write "Item not found"
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
end