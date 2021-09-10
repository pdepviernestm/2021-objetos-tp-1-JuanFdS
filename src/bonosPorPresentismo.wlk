object normal {
	method bonoPorPresentismo(empleado) {
		const faltas = empleado.cantidadDeFaltas()
		if(faltas == 0)
			return 2000
		else if (faltas == 1) {
			return 1000
		} else {
			return 0
		}
	}
}

object ajuste {
	method bonoPorPresentismo(empleado) =
		if(empleado.cantidadDeFaltas() > 0)
			100
		else
			0
}

object demagogico {
	method bonoPorPresentismo(empleado) =
		if(empleado.neto() < 18000)
			500
		else
			300
}

object bonoNuloPorPresentismo {
	method bonoPorPresentismo(empleado) = 0
}