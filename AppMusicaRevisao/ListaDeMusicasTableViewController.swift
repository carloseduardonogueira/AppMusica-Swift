//
//  ListaDeMusicasTableViewController.swift
//  AppMusicaRevisao
//
//  Created by student on 14/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ListaDeMusicasTableViewController: UITableViewController {
    
    var musicas = [Musica]()

    override func viewDidLoad() {
        super.viewDidLoad()

        musicas = MusicaDAO.getMusicas()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musicas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaDaMusica", for: indexPath)

        if let musicaCell = cell as? MusicaTableViewCell{
            
            
            let musicaAtual = musicas[indexPath.row]
            
            musicaCell.nomeMusicaLabel.text = musicaAtual.nomeDaMusica
            musicaCell.nomeArtistaLabel.text = musicaAtual.nomeDoArtista
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "mostrarProximaTela"{
         
            if let novaView = segue.destination as? DetalhesViewController{
                
               let indice = tableView.indexPathForSelectedRow?.row
                
                novaView.musicaQueVeio = musicas[indice!]
            }
        }
    }

}
