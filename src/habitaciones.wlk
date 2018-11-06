class Habitacion {
	
	var confortAdicional=0
	var confort=10+confortAdicional
	var metrosCuadrados=0
	const ocupantes=#{}
	method ocupantes(){return ocupantes}
	method metrosCuadrados(tan){metrosCuadrados=tan}
	method confortA(tal){return confort}
	method agregarPersona(tal){
		tal.habitacionActual(self)
		ocupantes.add(tal)
	}
	method sacarPersona(tal){ocupantes.remove(tal)}		
	method vacia(){return ocupantes.isEmpty()}
	
}
class UsoGeneral inherits Habitacion{
		
}
class Banio inherits Habitacion{
	override method confortA(tal){
		if (tal.edad()>=4){
			confortAdicional=2
			return confort
		}else{
			confortAdicional=4
			return confort
		}
	}
	override method agregarPersona(tal){
		if (self.vacia() || ocupantes.any({e=>e.edad()<=4})){
		super(tal)
		}
	}
}

class Dormitorio inherits Habitacion{
	const duenios=#{}
	method duenio(){return duenios}
	method removerDuenio(tal){duenios.remove(tal)}
	method agregarDuenio(tal){duenios.add(tal)}
	method esDuenio(tal){return duenios.contains(tal)}
	override method confortA(tal){
		if (self.esDuenio(tal)){
			confortAdicional=10/duenios.size()
			return confort
		}
		return confort
	}
	override method agregarPersona(tal){
		if ( self.esDuenio(tal)){
			super(tal)
		}else{
		if (self.vacia() ||duenios.intersection(ocupantes)==duenios)
			super(tal)
		}
	}
}
class Cocina inherits Habitacion{
	var porcentaje=10
	method porcentaje(tan){porcentaje=(tan).min(100)}
	override method confortA(tal){
		if (tal.sabeCocinar()){
			confortAdicional=metrosCuadrados*porcentaje/100
			return confort
		}
		return confort
	}
	
	override method agregarPersona(tal){
		if (self.vacia() ||!tal.sabeCosinar()){
			super(tal)
		}else{
			if (!ocupantes.any({e=>e.sabeCosinar()}))
			super(tal)
		}
	}
}




