object porcentaje {
	method bonoPorResultados(empleado) =
		empleado.neto() * 0.1
}

object montoFijo {
	method bonoPorResultados(empleado) = 800
}

object bonoNuloPorResultados {
	method bonoPorResultados(empleado) = 0
}
