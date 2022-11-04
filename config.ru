require 'rack'
require 'pry'

class App
  def call(env)
    #binding.pry
    path = env["PATH_INFO"]

    if path == "/"
      [200, { "content-type" => "text/html" }, ["<h2>Welcome to life</h2>"]]
    elsif path == "/potato"
      [200, { "content-type" => "text/html" }, ["<p>Boil 'em, mash 'em, stick 'em in a stew</p>"]]
    else
      [404, { "content-type" => "text/html" }, ["Page not found"]]
    end
  end
end

run App.new