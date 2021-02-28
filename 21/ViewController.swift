//
//  ViewController.swift
//  21
//
//  Created by Adrian Yip on 26/02/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var button_label: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        button_label = sender.currentTitle
        
        self.performSegue(withIdentifier: "goToDetailedVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let destinationVC = segue.destination as! detailedViewController
        destinationVC.titleHeader = button_label
    }
}

