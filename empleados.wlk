/** First Wollok example */
import destinos.*
object neo {
	var puedeLlamar = false
	var acceso = false
	method peso(){
		return 0
	}
	method puedeLlamar(){
		return puedeLlamar
	}
	method setPuedeLlamar(_puedeLlamar){
		puedeLlamar = _puedeLlamar
	}
	method setAcceso(_acceso){
		acceso = _acceso 
	}
	method acceso(){
		return acceso
	}
	method entregarPaquete(destino){
		self.validarEntrega(destino)
		paquete.entregar()
		
		

	}
	method validarEntrega(destino){
		if (not destino.restriccion(self)){
			self.error ("No entregas el paquete")
		}
	}

}

object saraConnor{
	var peso = 0
	var vehiculo = moto  
	var acceso = false
	method peso(){
		return peso + vehiculo.peso()
	}
	method setPeso(_peso){
		peso = _peso
	}
	method puedeLlamar(){
		return false
	}
	method vehiculo(_vehiculo){
		vehiculo = _vehiculo
	}
	method setAcceso(_acceso){
		acceso = _acceso

	}
	method entregarPaquete(destino){
		self.validarEntrega(destino)
		paquete.entregar()
		
		

	}
	method validarEntrega(destino){
		if (not destino.restriccion(self)){
			self.error ("No entregas el paquete")
		}
	}
	
}

object jeanGray{//preguntar
	var acceso = false
	method peso(){
		return 65
	}
	method puedeLlamar(){
		return true
	}
	method setAcceso(_acceso){
		acceso = _acceso

	}
	method entregarPaquete(destino){
		self.validarEntrega(destino)
		paquete.entregar()
		
		

	}
	method validarEntrega(destino){
		if (not destino.restriccion(self)){
			self.error ("No entregas el paquete")
		}
	}

}


object paquete{
	var estadoPago = false
	var entregado = false
	method validarPago(){
		estadoPago = true
	}
	method desvalidarPago(){
		estadoPago = false
	}
	method estadoPago(){
		return estadoPago
	}
	method entregar(){
		entregado = true
	}
	method rechazarEntrega(){
		entregado = false
	}
	method entregado(){
		return entregado
	}
	method estadoPago(_estadoPago){
		estadoPago = _estadoPago
	}
}

object moto{
	method peso(){
		return 100
	}
}

object camion{
	var cantAcoplados = 0
	method peso(){
		return 500 + self.cantAcoplados() * 500
	}
	method setCantAcoplados(_cantAcoplados){
		cantAcoplados = _cantAcoplados
	}
	method cantAcoplados(){
		return cantAcoplados
	}
}