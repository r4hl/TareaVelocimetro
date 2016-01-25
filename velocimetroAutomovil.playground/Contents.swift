//: velocímetro Automóvil
import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = .Apagado
        
    }
    
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var textoSalida : String = ""
        let velocidadActual = velocidad.rawValue
        switch velocidad{
        case .Apagado:

            textoSalida = "Apagado"
            velocidad = .VelocidadBaja
            break
        case .VelocidadBaja:

            textoSalida = "Velocidad baja"
            velocidad = .VelocidadMedia
            break
        case .VelocidadMedia:

            textoSalida = "Velocidad media"
            velocidad = .VelocidadAlta
            break
        case .VelocidadAlta:

            textoSalida = "Velocidad alta"
            velocidad = .VelocidadMedia
            break
        }
        let resultado = ( velocidadActual, textoSalida)
        
        return resultado
   }
    
}

var auto = Auto()
for index in 1...20{
    print(auto.cambioDeVelocidad())
}




