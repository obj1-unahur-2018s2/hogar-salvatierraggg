class Habitacion {
	
	var confortAdicional=0
	var confort=10
	var metrosCuadrados=0
	const ocupantes=#{}
	method darConfort(tal){tal.aumentaConfort(confort+confortAdicional)}
}
class UsoGeneral inherits Habitacion{
		
}
class Banio inherits Habitacion{
	override method darConfort(tal){
		if (tal.edad()>=4){confortAdicional=2}else{confortAdicional=4}
		super(tal)
	}
}

class Dormitorio inherits Habitacion{
	const duenios=#{}
	method removerDuenio(tal){duenios.remove(tal)}
	method agregarDuenio(tal){duenios.add(tal)}
	method esDuenio(tal){return duenios.contains(tal)}
	override method darConfort(tal){
		if (self.esDuenio(tal)){confortAdicional=10/duenios.size()}
		super(tal)
	}
}
class Cocinas inherits Habitacion{
	var porcentaje=10
	method porcentaje(tan){porcentaje=(tan).min(100)}
	override method darConfort(tal){
		if (tal.sabeCocinar()){confortAdicional=metrosCuadrados*porcentaje/100}
		super(tal)
	}
}




