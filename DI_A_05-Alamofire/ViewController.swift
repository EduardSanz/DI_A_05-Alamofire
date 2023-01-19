//
//  ViewController.swift
//  DI_A_05-Alamofire
//
//  Created by Eduard on 19/01/2023.
//

import UIKit
import Alamofire
import AlamofireImage
import Toast

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personajes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CELDA", for: indexPath) as! PersonajeTableViewCell
        
        celda.lblNombre.text = personajes[indexPath.row].name
        celda.lblSexo.text = personajes[indexPath.row].gender
        
        AF.request(personajes[indexPath.row].image).responseImage {
            respuesta in
            if case .success(let imagen) = respuesta.result {
                celda.imgPersonaje.image = imagen
            }
        }
        
        return celda
    }
    
    
    var personajes: [Personaje] = []
    let BASE_URL = "https://rickandmortyapi.com/api/character"

    @IBOutlet weak var tablaPersonajes: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        descargaDatos()
    }

    func descargaDatos() {
        let jSonDecoder = JSONDecoder();
        AF.request(BASE_URL).responseDecodable(of: Respuesta.self, decoder: jSonDecoder) { resultado in
            guard let respuesta = resultado.value
            else {
                self.view.makeToast("ERROR")
                return
            }
            self.personajes = respuesta.results
            self.tablaPersonajes.reloadData()
            
        }
    }
}

