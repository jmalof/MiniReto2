//: A UIKit based Playground for presenting user interface
  
import UIKit


enum Velocidades: Int{
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(){
        self = .Apagado
    }
}

class Auto {
    var velocidad : Velocidades;
    
    init() {
        self.velocidad = Velocidades()
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        var velocidadCadena: String = ""
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            velocidadCadena = "Velocidad Baja"
            break
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            velocidadCadena = "Velocidad Media"
            break
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            velocidadCadena = "Velocidad Alta"
            break
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            velocidadCadena = "Velocidad Media"
            break
        }
        return (velocidad.rawValue, velocidadCadena)
    }
}

var auto: Auto = Auto()
//auto.velocidad = .Apagado
for _ in 1...20{
    print(auto.cambioDeVelocidad())
}
