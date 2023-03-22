//
//  Galeria1ViewController.swift
//  APPMMR
//
//  Created by CEDAM 14 on 15/03/23.
//

import UIKit

class Galeria1ViewController: UIViewController {
    
    
    @IBOutlet weak var imagenpierna: UIImageView!
    let listapierna = ["Prensa", "Extension", "Hack", "sentadilla frontal"]
    var elementosindice = 0
    
    
    @IBOutlet weak var textopierna: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func mostrar1(_ sender: Any) {
        textopierna.text = listapierna[elementosindice]
        
    }
    
    @IBAction func siguiente(_ sender: Any) {
        elementosindice+=1
        
        if (elementosindice >= listapierna.count){
            elementosindice = 0
        }
        actualizarelementos()
    }

    func actualizarelementos(){
        textopierna.text = "Ejercicio de primera sección"
        
        let numeroDelElemento = listapierna[elementosindice]
        let laImagen = UIImage(named: numeroDelElemento)
        
        imagenpierna.image = laImagen
    }

}
