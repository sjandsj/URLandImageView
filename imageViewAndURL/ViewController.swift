//
//  ViewController.swift
//  imageViewAndURL
//
//  Created by mac on 11/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let urlKey = "https://static.dezeen.com/uploads/2018/07/the-pearl-skyscraper-movie-dwayne-johnson_dezeen_hero-1704x959.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func clickMeButton(_ sender: Any) {
        if let url = URL(string: urlKey) {
            do {
                let data = try Data (contentsOf: url)
                self.imageView.image = UIImage(data: data)
            } catch let err {
                print("Error: \(err.localizedDescription)")
            }
        }
    }
    
}

