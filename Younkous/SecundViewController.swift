//
//  SecundViewController.swift
//  Younkous
//
//  Created by Jazmin on 15/08/24.
//

import UIKit

class SecundViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageYounko: UIImageView!
    
    var nameYounko2 = ""
    var imageYounko2: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = nameYounko2
        imageYounko.image = imageYounko2
    }
    


}
