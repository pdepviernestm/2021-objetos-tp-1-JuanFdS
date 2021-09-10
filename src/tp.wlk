import bonosPorResultado.*
import bonosPorPresentismo.*

object gerente {
	method neto() = 15000
}

object cadete {
	method neto() = 20000
}

object vendedor {
	var aumentoPorMuchasVentas = false
	method desactivarAumentoPorMuchasVentas() {
		aumentoPorMuchasVentas = false
	}
	method activarAumentoPorMuchasVentas() {
		aumentoPorMuchasVentas = true
	}

	method neto() {
		const netoBase = 16000
		if(aumentoPorMuchasVentas)
			return netoBase * 1.25
		else
			return netoBase
	}
}

object pepe {
	var property categoria = gerente
	var property tipoDeBonoPorResultados = bonoNuloPorResultados
	var property tipoDeBonoPorPresentismo = bonoNuloPorPresentismo
	var faltas = 0

	method falto() {
		faltas += 1	
	}
	method cantidadDeFaltas() = faltas
	method neto() = categoria.neto()
	method bonoPorResultados() =
		tipoDeBonoPorResultados.bonoPorResultados(self)
	method bonoPorPresentismo() =
		tipoDeBonoPorPresentismo.bonoPorPresentismo(self)
	method sueldo() = self.neto() + self.bonoPorResultados() + self.bonoPorPresentismo()
}

object sofia {
	var property categoria = gerente
	var property tipoDeBonoPorResultados = bonoNuloPorResultados
	
	method bonoPorResultados() =
		tipoDeBonoPorResultados.bonoPorResultados(self)
	
	method neto() = categoria.neto() * 1.3
	
	method sueldo() = self.neto() + self.bonoPorResultados() + 9000
}

object oliver {
	var property companiero = pepe
	var property tipoDeBonoPorPresentismo = bonoNuloPorPresentismo

	method cantidadDeFaltas() = 0
	method neto() = companiero.neto()
	method bonoPorPresentismo() =
		tipoDeBonoPorPresentismo.bonoPorPresentismo(self)
	method sueldo() = self.neto() + self.bonoPorPresentismo()
}