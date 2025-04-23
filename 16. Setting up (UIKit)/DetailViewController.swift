//
//  DetailViewController.swift
//  16. Setting up (UIKit)
//
//  Created by Валентин Картошкин on 20.04.2025.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageName = selectedImage {
            imageView.image = UIImage(named: imageName)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
