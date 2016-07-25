class Converter

	def kmToMiles(km)
		return km/1.60934
	end

	def milesToKm(miles)
		return miles*1.60934
	end

	def celsiusToFahrenheit(celsius)
		return celsius*1.8+32
	end

	def fahrenheitToCelsius(fahrenheit)
		return (fahrenheit-32)/1.8
	end

	def stonesToPounds(stones)
		return stones*14
	end

	def poundsToStones(pounds)
		return pounds/14
	end

	def poundsToKg(pounds)
		return pounds/2.20462
	end

	def kgToPounds(kg)
		return kg*2.20462
	end

	def stonesToKg(stones)
		return stones*6.35029
	end

	def kgToStones(kg)
		return kg/6.35029
	end
end

#test = Converter.new