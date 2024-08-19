//
//  ViewController.swift
//  Younkous
//
//  Created by Jazmin on 15/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var younkos = ["barbaBlanca", "barbaNegra", "shanks", "bigMon", "kaido"]
    var younkosImage = [UIImage]()
    var nameYonunko = ""
    var imageYounko: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        younkosImage.append(.barbaBlanca)
        younkosImage.append(.barbaNegra)
        younkosImage.append(.shanks)
        younkosImage.append(.bigMon)
        younkosImage.append(.kaido)
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return younkos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = younkos[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        nameYonunko = younkos[indexPath.row]
        imageYounko = younkosImage[indexPath.row]
        
        performSegue(withIdentifier: "Segue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue" {
            let secondVC = segue.destination as! SecundViewController
            secondVC.nameYounko2 = nameYonunko
            secondVC.imageYounko2 = imageYounko
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            younkos.remove(at: indexPath.row)
            younkosImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    
}
