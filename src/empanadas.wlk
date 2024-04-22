// encargado 
object gimenez{
	var fondoSueldos = 3000000
	method pagarA(empleado){
		fondoSueldos -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}

object galvan {
	var totalSueldo = 150000
	var deuda = 0
	var dineroEnCuenta = 0
	
	method sueldo(nuevoSueldo){ 
		totalSueldo = nuevoSueldo
	}
	
	method sueldo(){ return totalSueldo }
	
	method cobrarSueldo(){
		dineroEnCuenta = totalSueldo
		self.pagarDeuda()
	}
	
	method gastar(montoAGastar){
		var diferencia = montoAGastar - dineroEnCuenta
		if (dineroEnCuenta > montoAGastar){
			dineroEnCuenta = dineroEnCuenta - montoAGastar
		}
		else{
			dineroEnCuenta = 0;
   			deuda += diferencia
   			diferencia = 0
		}
	}
	method pagarDeuda(){
		if (dineroEnCuenta > deuda) {
			dineroEnCuenta -= deuda;
    		deuda = 0;
		}
		else {
			deuda -= dineroEnCuenta
    		dineroEnCuenta = 0
		}
	}
	
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dineroEnCuenta
	}
}

object baigorria {
	var totalSueldo = 0
	var empanadasVendidas = 0
	var dineroEnCuenta = 0
	var precioPorEmpanadas = 150
	
	method sueldo(){ return empanadasVendidas * precioPorEmpanadas }
	
	method cobrarSueldo(){
		dineroEnCuenta = totalSueldo
	}
	
	method vendeEmpanadas(numero){
		empanadasVendidas= empanadasVendidas + numero	
	}
	
	method totalDinero(){
		return dineroEnCuenta
	}
	
}









