import cosas.*

object camion {
	var cargas = []
	method cargar(cosa){
		cargas.add(cosa)
	}
	method descargar(cosa){
		cargas.remove(cosa)
	}
	method objetosPeligrosos(n){
		return cargas.filter{cosa => cosa.peligrosidad() > n }
	}
	method objetosMasPeligrososQue(cosa) {
		return cargas.filter{algo => algo.peligrosidad() > cosa.peligrosidad() }
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return not cargas.any{algo => algo.peligrosidad() > nivelMaximoPeligrosidad}
	}
}
