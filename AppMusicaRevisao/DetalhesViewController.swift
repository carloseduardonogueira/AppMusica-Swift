//
//  DetalhesViewController.swift
//  AppMusicaRevisao
//
//  Created by student on 14/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    @IBOutlet weak var capaAlbum: UIImageView!
    
    @IBOutlet weak var musicaLabel: UILabel!
    
    @IBOutlet weak var artistaLabel: UILabel!
    
    @IBOutlet weak var albumLabel: UILabel!
    
    @IBOutlet weak var musicaTitle: UINavigationItem!
    
    var musicaQueVeio: Musica?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        capaAlbum.image = UIImage(named: (musicaQueVeio?.fotoAlbum)!)
        musicaLabel.text = musicaQueVeio?.nomeDaMusica
        artistaLabel.text = musicaQueVeio?.nomeDoArtista
        albumLabel.text = musicaQueVeio?.nomeDoAlbum
        
        musicaTitle.title = musicaQueVeio?.nomeDoArtista
    }

}
