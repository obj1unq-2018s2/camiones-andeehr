import cosas.*
import camion.*

object deposito {
	var cosas = [knightRider, bumblebee, paqueteDeLadrillos, arenaAGranel, bateriaAntiaerea, residuosRadioactivos]
	method cargarCamion(camion){
		cosas.forEach{cosa => camion.cargar(cosa)}
	}
}
