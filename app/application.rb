class Application
  @@items = [Item.new("apple", 2.00), Item.new("banana", 3.00), Item.new("milk", 4.00), Item.new("steak", 5.00)]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/item/)
      item = req.path.split("/songs/").last
    
  end
end