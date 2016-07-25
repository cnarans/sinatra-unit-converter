MyApp.get "/" do
  	erb :"main"
end

MyApp.post "/result" do
	@option = params[:option]
	@units = params[:units].to_f

	con = Converter.new
	if @option=="kmToMiles"
		@initial = "Kilometers"
		@target = "Miles"
		@convert = con.kmToMiles(@units)
	elsif @option=="milesToKm"
		@initial = "Miles"
		@target = "Kilometers"
		@convert = con.milesToKm(@units)
	elsif @option=="celsiusToFahrenheit"
		@initial = "Celsius"
		@target = "Fahrenheit"
		@convert = con.celsiusToFahrenheit(@units)
	elsif @option=="fahrenheitToCelsius"
		@initial = "Fahrenheit"
		@target = "Celsius"
		@convert = con.fahrenheitToCelsius(@units)
	elsif @option=="stonesToPounds"
		@initial = "Stones"
		@target = "Pounds"
		@convert = con.stonesToPounds(@units)
	elsif @option=="poundsToStones"
		@initial = "Pounds"
		@target = "Stones"
		@convert = con.poundsToStones(@units)
	elsif @option=="poundsToKg"
		@initial = "Pounds"
		@target = "Kilograms"
		@convert = con.poundsToKg(@units)
	elsif @option=="kgToPounds"
		@initial = "Kilograms"
		@target = "Pounds"
		@convert = con.kgToPounds(@units)
	elsif @option=="stonesToKg"
		@initial = "Stones"
		@target = "Kilograms"
		@convert = con.stonesToKg(@units)
	else @option=="kgToStones"
		@initial = "Kilograms"
		@target = "Stones"
		@convert = con.kgToStones(@units)
	end

	erb :"result"
end
