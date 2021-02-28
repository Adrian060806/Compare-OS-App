//
//  detailedViewController.swift
//  21
//
//  Created by Adrian Yip on 27/02/2021.
//

import UIKit

class detailedViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    
    //to access list of descriptions from descriptionsList.swift
    var descriptionList = DescriptionList()
    
    var titleHeader: String?
    var mainDescription: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        mainText.text = descriptionList.dict[titleHeader!]
        
        if titleHeader == "macosButton" {
            logoImage.image = #imageLiteral(resourceName: "137fbbc45babc1c2df798ebbac18eca5")
            titleLabel.text = ""
        } else if titleHeader == "windowsButton" {
            logoImage.image = #imageLiteral(resourceName: "Windows_logo")
            titleLabel.text = ""
        } else {
            titleLabel.text = titleHeader
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
