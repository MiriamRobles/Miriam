//
//  GaleriaViewController.swift
//  Miriam
//
//  Created by CEDAM 14 on 14/03/23.
//

import UIKit

class GaleriaViewController: UIViewController {

    @IBOutlet weak var Imagen: UIImageView!
    
    let listaImagenes = ["Imagen 1.1","Imagen2", "Imagen3"]
    var elementosIndice = 0
    

    @IBOutlet weak var Etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actualizaElemento()
    }
    

    @IBAction func Mostrar(_ sender: Any) {
        Etiqueta.text = listaImagenes[elementosIndice]
         
    }
    
    @IBAction func Siguiente(_ sender: Any) {
        elementosIndice+=1
        if(elementosIndice >= listaImagenes.count){
            elementosIndice = 0
        }
        actualizaElemento()
    }
    func actualizaElemento(){
    
        Etiqueta.text = "Mira esta maravilla"
        let numeroDeElementos = listaImagenes [elementosIndice]
        let laImagen = UIImage (named: numeroDeElementos)
        Imagen.image = laImagen
    }
    
}
