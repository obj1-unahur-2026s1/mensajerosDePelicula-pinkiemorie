import paquetes.*
object roberto {
    var vehiculo = bicicleta
    const paquetes = []

    method pesoPropio() = 90
    method peso() = self.pesoPropio() + vehiculo.peso()
    method puedeHacerLlamada() = false

    method vehiculo(vehiculoACambiar) {
        vehiculo = vehiculoACambiar
    }

    method agregarPaquete(paquete) {
        paquetes.add(paquete)
    }

    method tienePaquetesPagos() {
        if (not paquetes.isEmpty()) {
            return paquetes.all({p => p.estaPago()})
        }

        else {
            return false
        }
    }

    method puedeEntregarEnDestino(destino) {
        return destino.condicionDeEntrada(self) and self.tienePaquetesPagos()
    }
}

object bicicleta {
    method peso() = 5
}

object camion {
    var cantAcoplados = 1
    const pesoPorAcoplado = 500
    
    method peso() = cantAcoplados * pesoPorAcoplado

    method cantAcoplados(cantACambiar) {
      cantAcoplados = cantACambiar
    }
}

object chuckNorris {
    const paquetes = []

    method peso() = 80
    method puedeHacerLlamada() = true

    method agregarPaquete(paquete) {
        paquetes.add(paquete)
    }

    method tienePaquetesPagos() {
        if (not paquetes.isEmpty()) {
            return paquetes.all({p => p.estaPago()})
        }

        else {
            return false
        }
    }

    method puedeEntregarEnDestino(destino) {
        return destino.condicionDeEntrada(self) and self.tienePaquetesPagos()
    }
}

object neo {
    var tieneCredito = true
    const paquetes = []

    method peso() = 0
    method puedeHacerLlamada() = tieneCredito

    method tieneCredito(estadoDeCredito) {
        tieneCredito = estadoDeCredito
    }

    method agregarPaquete(paquete) {
        paquetes.add(paquete)
    }

    method tienePaquetesPagos() {
        if (not paquetes.isEmpty()) {
            return paquetes.all({p => p.estaPago()})
        }

        else {
            return false
        }
    }

    method puedeEntregarEnDestino(destino) {
        return destino.condicionDeEntrada(self) and self.tienePaquetesPagos()
    }
}

