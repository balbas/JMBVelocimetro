//: Reto de programación 2

// Programador: Jose Manuel Balbás

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self  = velocidadInicial
    }
        
}

class Auto {
    var velocidad: Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        var mensaje: String = ""
        let actual = velocidad
        
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            mensaje = "Velocidad Baja"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            mensaje = "Velocidad Media"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            mensaje = "Velocidad Alta"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            mensaje = "Velocidad Media"
        }
        
        return (actual.rawValue, mensaje)
    }
}

// Pruebas de la clase
var auto = Auto()
for var i=0; i<20; i++ {
    print(auto.cambioDeVelocidad())
}