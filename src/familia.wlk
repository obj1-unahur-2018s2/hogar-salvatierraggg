class Familia{
	const integrantes=#{}
}


class Persona {
	var property dormitorioActual
	var property edad
	var property sabeCocinar=false
	method apropiarDormitorio(tal){
		dormitorioActual.removerDuenio(self)
		tal.agregarDuenio(self)
	}
	method aprendeACosinar(){sabeCocinar=true}
	
}


