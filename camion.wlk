import cosas.*

object camion {
    method tara() = 1000
    const carga = []
    method cargarCosa(unaCosa) {
      carga.add(unaCosa)
    }
     method descargarCosas(unaCosa) {
       carga.remove(unaCosa)
    }
    method peso() = 1000 + carga.sum({a => a.peso()})
    method pesosPares() = carga.all({ a => a.peso().even()} )
    method hayAlgoDePeso(unPeso) = carga.any({a => a.peso() == unPeso})
    method loPrimeroConPeligrosidad(nivelDePeligrosidad) = carga.find({ a=> a.peligrosidad() == nivelDePeligrosidad})
    method cargaConPeligrosidadSuperiorA(nivelDePeligrosidad) = carga.filter({a => a.peligrosidad() > nivelDePeligrosidad})
    method contieneAlgoConPesoEntre(maximo, minimo) = carga.any({a => a.peso().between(minimo, maximo)})
    method cosaMasPesada() = carga.max({ a => a.peso()})
    method estaExedido() = self.peso() > 2500
    method puedeCircularEnRuta(nivelDePeligrosidad) = (not self.estaExedido()) and self.cargaConPeligrosidadSuperiorA(nivelDePeligrosidad).isEmpty()
}