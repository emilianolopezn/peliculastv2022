//
//  ViewController.swift
//  tableview
//
//  Created by MaestroD1 on 9/23/22.
//  Copyright © 2022 MaestroD1. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var peliculas : [Pelicula] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "Titanic", año: "1997", director: "James Cameron", genero: "Drama"))
        peliculas.append(Pelicula(titulo: "Chabelo y Pepito contra los monstruos", año: "1973", director: "Jose Estrada", genero: "Comedia"))
        peliculas.append(Pelicula(titulo: "Vacaciones de terror", año: "1989", director: "Rene Cardona", genero: "Terror"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as! CeldaPeliculaController
        
        celda.lblDirector.text = peliculas[indexPath.row].director
        celda.lblAño.text = peliculas[indexPath.row].año
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }

}

