object knightRider {
    method peso() = 500

    method peligrosidad() = 10 
}

object bumblebee {
    var transformado = true
    
    method peso() = 800

    method peligrosidad() = if (transformado) 15 else 30

    method convertir() { transformado = !transformado }   
}

object ladrillos {
    var cantidad = 0

    method peso() = cantidad * 2

    method agregar(unaCantidad) { cantidad += unaCantidad }

    method sacar(unaCantidad) { cantidad -= unaCantidad }

    method peligrosidad() = 2
}

object arena {
    var peso = 0

    method cambiarPeso(unPeso) { peso = unPeso}
    
    method peso() = peso

    method peligrosidad() = 1
}

object bateriaAntiaerea {
    var misiles = 0

    method cargar(cantidad) { misiles = cantidad}

    method peso() = if (misiles > 0) 300 else 200
    

    method peligrosidad() = if (misiles > 0) 100 else 0
}

object contenedorPortuario {
    
    const cosas = []

    method peso() = 100 + cosas.sum({c=>c.peso()})

    method agregar(algo) = cosas.add(algo)

    method quitar(algo) = cosas.remove(algo)
    

    method peligrosidad() = if (cosas.isEmpty()) 0 
    else 
    cosas.max({c=>c.peligrosidad()}).peligrosidad()
}

object residuos {
    var peso = 0

    method cambiarPeso(unPeso) { peso = unPeso}
    
    method peso() = peso

    method peligrosidad() = 200
}

object embalaje {
    var envuelve = arena

    method envuelve(unaCosa) { envuelve = unaCosa}

    method cosaEmbalada() = envuelve
    
    method peso() = self.cosaEmbalada().peso()

    method peligrosidad() = self.cosaEmbalada().peligrosidad() / 2
}