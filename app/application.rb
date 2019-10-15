class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new

    if time.hour < 12
      resp.write time.hour
      resp.write "Good Morning!"
      resp.write "Good Afternoon!"
    else
      resp.write time.hour
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end