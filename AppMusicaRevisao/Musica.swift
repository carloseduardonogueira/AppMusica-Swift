//
//  Musica.swift
//  AppMusicaRevisao
//
//  Created by student on 14/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

class Musica{
    
    let nomeDaMusica: String
    let nomeDoArtista: String
    let nomeDoAlbum: String
    
    let fotoAlbum: String
    
    init(nomeDaMusica: String, nomeDoArtista: String, nomeDoAlbum: String, fotoAlbum: String) {
        
        self.nomeDaMusica = nomeDaMusica
        self.nomeDoArtista = nomeDoArtista
        self.nomeDoAlbum = nomeDoAlbum
        
        self.fotoAlbum = fotoAlbum
    }
}

class MusicaDAO{
    
    static func getMusicas() -> [Musica]{
        
        return[
        
            Musica(nomeDaMusica: "Make Love", nomeDoArtista: "Ineis Brasil", nomeDoAlbum: "Make Love", fotoAlbum: "1"),
            Musica(nomeDaMusica: "Ceu Azul", nomeDoArtista: "Charlie Brown Jr", nomeDoAlbum: "Ceu Azul", fotoAlbum: "2"),
            Musica(nomeDaMusica: "Piloto Automatico", nomeDoArtista: "Super Combo", nomeDoAlbum: "Piloto Automatico", fotoAlbum: "3")
        ]
    }
}
