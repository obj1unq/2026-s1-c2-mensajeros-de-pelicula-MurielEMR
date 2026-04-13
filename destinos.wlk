import empleados.*

object puenteDeBrooklyn{
    method restriccion(empleado){
        return empleado.peso()<=1000 && paquete.estadoPago()
    }

    method permitirAcceso(empleado){
        if(self.restriccion(empleado)){
            empleado.setAcceso(true)
        } else empleado.setAcceso(false)
    }
}


object laMatrix{
    method restriccion(empleado){
        return empleado.puedeLlamar() && paquete.estadoPago()
    }
    method permitirAcceso(empleado){
        if (self.restriccion(empleado)){
            empleado.setAcceso(true)
            }
    }
    method denegarAcceso(empleado){
        empleado.setAcceso(false)
    }
}


test "Prueba"{
    
}