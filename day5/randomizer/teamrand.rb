require "sinatra"
require "sinatra/reloader"

get "/randomizer" do
  erb :index, layout: :app_layout
end

post "/randomizer" do
  @team = params["team"]
  @team = @team.split(",").shuffle
  @num = params["num"].to_i

  def group(p, number)
      @z = []
      @num.times {@z << []}
      @i = 0
      while @i < @team.count
          @z[ @i % @num ] << @team[@i]
          @i+=1
      end
      # puts @z.inspect
  end

  erb :randomizer, layout: :app_layout
end
