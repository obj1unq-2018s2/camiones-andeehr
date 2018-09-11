import cosas.*

object camion {
	var cargas = []
	const tara = 1000 // kg
	method cargar(cosa){
		cargas.add(cosa)
	}
	method descargar(cosa){
		cargas.remove(cosa)
	}
	method pesoTotal() {
		return cargas.sum{cosa => cosa.peso()} + tara
	}
	method excedidoDePeso(){
		return self.pesoTotal() > 2500
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
