MyApp.get "/" do
  	erb :"main"
end

MyApp.post "/milesToKm" do
	@option = params[:option]
	@units = params[:units].to_f
	@initial = "Miles"
	@target = "km"
	con = Converter.new
	@convert = con.milesToKm(@units)
	erb :"result"
end
