import camion.*

object knightRider {
	method peso() = 500
	method peligrosidad() = 10
}

object bumblebee {
	var property estaTransformadoEnAuto= false
	method peso() = 800
	method peligrosidad() {
		if (estaTransformadoEnAuto){
			return 15
		} else {
			return 30
		}
	}
}

object paqueteDeLadrillos {
	var property ladrillos = 0
	method peso() = ladrillos * 2
	method peligrosidad() = 2
}

object arenaAGranel {
	var property peso = 0
	method peso() = peso
	method peligrosidad() = 1
}

object bateriaAntiaerea {
	var property estaConMisiles = false
	method peso(){
		if (estaConMisiles){
			return 300
		} else {
			return 200
		}
	}
	method peligrosidad(){
		if (estaConMisiles){
			return 100
		} else {
			return 0
		}
	}
}