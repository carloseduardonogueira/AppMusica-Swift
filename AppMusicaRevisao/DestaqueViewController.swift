//
//  DestaqueViewController.swift
//  AppMusicaRevisao
//
//  Created by student on 14/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class DestaqueViewController: UIViewController {

    @IBOutlet weak var capaDestaque: UIImageView!
    
    @IBOutlet weak var musicaDestaque: UILabel!
    
    @IBOutlet weak var artistaDestaque: UILabel!
    
    @IBOutlet weak var albumDestaque: UILabel!
    
    var musicasDestaque = [Musica]()
    var musicaEmDestaque: Musica?
    var indiceDestaque: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        musicasDestaque = MusicaDAO.getMusicas()
        
        indiceDestaque = Int(arc4random_uniform(UInt32(musicasDestaque.count)))
        
        musicaEmDestaque = musicasDestaque[indiceDestaque]
        
        capaDestaque.image = UIImage(named: (musicaEmDestaque?.fotoAlbum)!)
        
        musicaDestaque.text = musicaEmDestaque?.nomeDaMusica
        artistaDestaque.text = musicaEmDestaque?.nomeDoArtista
        albumDestaque.text = musicaEmDestaque?.nomeDoAlbum
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
