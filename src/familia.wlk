class Familia{
	const integrantes=#{}
	method agregarIntegrantes(tal){integrantes.add(tal)}
}


class Persona {
	var property habitacionActual=null
	var property edad
	var property sabeCocinar=false
	method habitacionActual(tal){
		if (habitacionActual!=null){
		habitacionActual.sacarPersona(self)
		}
		habitacionActual=tal
	}
	method aprendeACosinar(){sabeCocinar=true}
	method entrarHabitacion(tal){tal.agregarPersona(self)}
}


