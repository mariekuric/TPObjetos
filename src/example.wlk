/** First Wollok example */
object fuerzaOscura {
	var poder = 5
	
	method eclipse() {
		poder *= 2
	}
	
	method valor() {
		return poder
	}
}

object rolando {
	var hechizoPreferido = espectroMalefico
	
	method nivelDeHechiceria() {
		return (3*hechizoPreferido.poder()) + fuerzaOscura.valor()
	}
	
	method cambiarHechizoPreferido(nuevoHechizo) {
		hechizoPreferido = nuevoHechizo
	}
	
	method esPoderoso() {
		return hechizoPreferido.esHechizoPoderoso()
	}
}

object espectroMalefico {
	var nombre = "Espectro Malefico"
	
	method cambiarNombre(nuevoNombre) {
		nombre = nuevoNombre
	}
	
	method poder() {
		return nombre.size()
	}
	
	method esHechizoPoderoso() {
		return self.poder() > 15
	}
}

object hechizoBasico {
	method cambiarNombre(nuevoNombre) {}
	
	method poder() {
		return 10
	}
	
	method esHechizoPoderoso() {
		return false
	}
}

