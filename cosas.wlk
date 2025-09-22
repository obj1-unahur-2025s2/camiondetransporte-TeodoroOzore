object knigthRider {
    method peso() = 500
    method peligrosidad() = 10 
}

object bumblebee {
    var esUnAuto = true
    method peso() = 800
    method peligrosidad(){
        if (esUnAuto){
            return 15
        }
        else {
            return 30
        }
    }
    method cambiarForma() {
      esUnAuto = not esUnAuto
    }
}

object paqueteDeLadrillos {
    method peligrosidad() = 2
    var cantidadDeLadrillos = 0
    method cargarLadrillos(cantidad) {
        cantidadDeLadrillos = cantidad
    }
    method peso() = cantidadDeLadrillos * 2
}

object arenaAGranel {
    method peligrosidad() = 1
    var cantidadDeArena = 0
    method cargarArena(cantidad) {
        cantidadDeArena = cantidad
    }
    method peso() = cantidadDeArena
}

object bateriaAntiaerea {
    var tieneMisiles = true
    method peso(){
        if (tieneMisiles){
            return 300
        }
        else {
            return 200
        }
    }
    method peligrosidad(){
        if (tieneMisiles){
            return 100
        }
        else {
            return 0
        }
    }
    method cambiarCarga() {
      tieneMisiles = not tieneMisiles
    }
}

object contenedorPortuario {
  const contenido = []
  method cargarCosa(unaCosa) {
    contenido.add(unaCosa)
  }
  method peso() = 100 + contenido.sum({p=>p.peso()})
  method peligrosidad(){
    if (contenido.size() == 0){
        return 0
    }
    else{
        return contenido.max({p => p.peligrosidad()}).peligrosidad()
    }
  }
}

object residuosRadiactivos {
    method peligrosidad() = 200
    var peso = 0
    method cambiarPeso(nuevoPeso) {
      peso = nuevoPeso
    } 
    method peso() = peso 
}

object embalajeDeSeguridad {
  var cosa = knigthRider
  method peso() = cosa.peso()
  method peligrosidad() = cosa.peligrosidad() / 2
  method envolverCosa(unaCosa) {
    cosa = unaCosa
  }
}