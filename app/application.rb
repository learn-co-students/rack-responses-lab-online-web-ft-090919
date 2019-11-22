class Application

  def call(env)
    resp = Rack::Response.new

    morning = Kernel.rand(0..12)
    afternoon = Kernel.rand(12..24)

    if morning==afternoon
        resp.write "Good Morning"
      else
        resp.write "Good Afternoon"
      end


    resp.finish
  end

  end
