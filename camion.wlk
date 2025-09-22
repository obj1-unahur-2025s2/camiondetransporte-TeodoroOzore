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
}