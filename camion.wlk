import cosas.*
object camion {
    var peso = 0

    method tara() = 1000

    method pesoTotal() = self.tara() + peso

    method cargar(cosa){
        peso = peso + cosa.peso()

    }

    method descargar(cosa){
        peso = peso - cosa.peso()

    }

    method pesoCarga() = peso

    method cargaEsPar() = self.pesoCarga().even()

    method cosaPesa(unaCosa,unPeso) = {}

    method primeraCosaConPeligrosidad(unValor){

    }

    method cosasSuperanPeligrosidad(unValor){

    }

    method cosasQueSuperanPeligrosidadDe(unaCosa){

    }

    method estaExcedidoDePeso(){

    }

    method puedeCircularEnRuta(){

    }

}